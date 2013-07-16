class Step
  def initialize(step_text)
    @text = step_text
  end

  attr_reader :text

  def evaluate
    regex, block = @@regex_block_pairs.select {|k, v| k.match @text }.first
    return "undefined" if regex.nil?
    match_data = regex.match @text
    r = block.call *match_data.captures
    success = r ? "PASS" : "FAIL"
    return r
  end

end
