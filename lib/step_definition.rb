class StepDefinition
  def initialize(step_text)
    @text = step_text
  end

  def evaluate
    regex, block = @@regex_block_pairs.select {|k, v| k.match @text }.first
    match_data = regex.match @text
    r = block.call *match_data.captures
    binding.pry 
    return r
  end

end
