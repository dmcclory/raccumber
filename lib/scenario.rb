class Scenario

  def initialize(name, steps)
    @steps = steps
    @name = name
  end

  attr_reader :name

  def evaluate
    puts "  #{name}"
    results = @steps.map { |s| s.evaluate }
    results.zip(@steps).each do |result, step|
      puts "    #{step.text}"
      return result if ["undefined", "failure"].include? result
    end
    return "success"
  end
end
