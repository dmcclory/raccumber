class FeatureScanner

  def initialize
  end

  def tokenize text
    tokens = []

    while text != ""
      case text
      when /\AFeature: /
        tokens << [:FEAT_KEYWORD, $&]
        text.slice!(0, $&.size)
      when /\AScenario: /
        tokens << [:SCEN_KEYWORD, $&]
        text.slice!(0, $&.size)
      when /\AGiven|\AWhen|\AAnd|\AThen/m
        tokens << [:STEP_KEYWORD, $&]
        text.slice!(0, $&.size)
      when /\A\n/ 
        text.slice!(0, $&.size)
      when /\A[^\n]*/ 
        tokens << [:TEXT, $&]
        text.slice!(0, $&.size)
      end
    end

    tokens
  end
end
