require 'pry'

module StepDefinitions
  @@regex_block_pairs = Hash.new

  def define_step pattern, &block
    @@regex_block_pairs[pattern] = block
  end

  alias_method :Given, :define_step
  alias_method :Then, :define_step
  alias_method :When, :define_step
  alias_method :And, :define_step

end

include StepDefinitions

