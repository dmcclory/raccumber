class Feature

  def initialize(feature_name, scenarios)
    @scenarios = scenarios
    @feature_name = feature_name
  end

  attr_reader :feature_name
  attr_reader :scenarios

  def evaluate
    puts "Evaluating: #{@feature_name}"
    @scenarios.map {|e|
      e.evaluate
    }
  end

end
