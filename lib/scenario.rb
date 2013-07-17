require 'boom/color'
class Scenario

  include Boom::Color

  def initialize(name, steps)
    @steps = steps
    @name = name
  end

  @@color = { "success" => :cyan, "failure" => :red, "undefined" => :yellow}

  attr_reader :name

  def evaluate
    puts "  #{name}"
    results = @steps.map { |s| s.evaluate }
    results.zip(@steps).each do |result, step|
      result = "success" unless ["undefined", "failure"].include? result
      puts colorize("    #{step.text}", @@color[result])
      return result if ["undefined", "failure"].include? result
    end
    return "success"
  end
end
