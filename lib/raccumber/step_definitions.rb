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

Given /that I have an object named (.*)/ do |name|
  name
end

And /I have a second object named (.*)/ do |name|
  name
end

When /I have a combine them/ do |name|
  name
end

Then /I have a different object named (.*)/ do |name|
  name
end
