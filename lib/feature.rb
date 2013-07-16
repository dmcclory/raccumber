class Feature

  def initialize(scenarios)
    @scenarios = scenarios
  end

  attr_reader :scenarios

  def evaluate
    @scenarios.map {|e|
      e.evaluate
    }
  end

end
