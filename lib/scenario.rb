class Scenario

  def initialize(steps)
    @steps = steps
  end

  def evaluate
    @steps.all? { |s| s.evaluate }
  end
end
