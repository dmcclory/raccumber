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
      puts "    #{result}: #{step.text}"
      break if result == "undefined" or result == "FAIL"
    end
  end
end
