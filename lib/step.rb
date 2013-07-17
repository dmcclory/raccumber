require 'boom/color'
class Step

  include Boom::Color

  def initialize(step_text)
    @text = step_text
  end

  attr_reader :text

  def evaluate
    regex, block = @@regex_block_pairs.select {|k, v| k.match @text }.first
    return "undefined" if regex.nil?
    match_data = regex.match @text
    begin
      r = block.call *match_data.captures
      success = r ? "success" : "failure"
    rescue
      return "failure"
    end
    return r
  end

end
