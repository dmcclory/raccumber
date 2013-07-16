class Feature

  def initialize(feature_name, scenarios)
    @scenarios = scenarios
    @feature_name = feature_name
  end

  attr_reader :feature_name
  attr_reader :scenarios

  def evaluate
    puts "Evaluating: #{@feature_name}"
    results = @scenarios.map {|e|
      e.evaluate
    }
    successes  = results.select {|e| e == "success"}.count
    failures  = results.select {|e| e == "failure"}.count
    undefined = results.select {|e| e == "undefined"}.count
    return [successes, failures, undefined]
  end

end
