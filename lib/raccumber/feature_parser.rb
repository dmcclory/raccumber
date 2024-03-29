#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.9
# from Racc grammer file "".
#

require 'racc/parser.rb'
module Raccumber
  class FeatureParser < Racc::Parser

module_eval(<<'...end feature_parser.racc/module_eval...', 'feature_parser.racc', 30)

require 'feature'
require 'scenario'
require 'step'
require 'pry'

def parse(tokens)
  @tokens = tokens
  @result = Array.new
  @steps = Array.new
  @scenarios = Array.new
  do_parse
  @result
end

def next_token
  @tokens.shift
end
...end feature_parser.racc/module_eval...
##### State transition tables begin ###

racc_action_table = [
     3,     4,     7,     8,     9,     7,    11,    13,    16,    17,
    16,    19 ]

racc_action_check = [
     0,     1,     2,     3,     4,     5,     7,     8,    11,    12,
    14,    16 ]

racc_action_pointer = [
    -2,     1,    -2,     0,     4,     1,   nil,     3,     4,   nil,
   nil,     3,     6,   nil,     5,   nil,     8,   nil,   nil,   nil ]

racc_action_default = [
   -13,   -13,    -1,   -13,   -13,    -2,    -7,   -13,    -3,    20,
    -8,   -13,    -4,    -5,    -9,   -10,   -13,    -6,   -11,   -12 ]

racc_goto_table = [
    15,     6,    12,    18,    10,     5,     2,    14,     1 ]

racc_goto_check = [
     7,     5,     4,     7,     5,     3,     2,     6,     1 ]

racc_goto_pointer = [
   nil,     8,     6,     3,    -6,    -1,    -4,   -11 ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 7, :_reduce_1,
  2, 7, :_reduce_2,
  2, 8, :_reduce_3,
  3, 8, :_reduce_4,
  1, 10, :_reduce_5,
  2, 10, :_reduce_6,
  1, 9, :_reduce_none,
  2, 9, :_reduce_none,
  3, 11, :_reduce_9,
  1, 12, :_reduce_none,
  2, 12, :_reduce_none,
  2, 13, :_reduce_12 ]

racc_reduce_n = 13

racc_shift_n = 20

racc_token_table = {
  false => 0,
  :error => 1,
  :FEAT_KEYWORD => 2,
  :TEXT => 3,
  :SCEN_KEYWORD => 4,
  :STEP_KEYWORD => 5 }

racc_nt_base = 6

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "FEAT_KEYWORD",
  "TEXT",
  "SCEN_KEYWORD",
  "STEP_KEYWORD",
  "$start",
  "feature",
  "feature_title",
  "scenario_list",
  "description",
  "scenario",
  "step_definition_list",
  "step_definition" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'feature_parser.racc', 4)
  def _reduce_1(val, _values, result)
     @result.push Feature.new  
    result
  end
.,.,

module_eval(<<'.,.,', 'feature_parser.racc', 5)
  def _reduce_2(val, _values, result)
     @result.push Feature.new(val[0], @scenarios); @scenarios = Array.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'feature_parser.racc', 7)
  def _reduce_3(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'feature_parser.racc', 8)
  def _reduce_4(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'feature_parser.racc', 10)
  def _reduce_5(val, _values, result)
     
    result
  end
.,.,

module_eval(<<'.,.,', 'feature_parser.racc', 11)
  def _reduce_6(val, _values, result)
     
    result
  end
.,.,

# reduce 7 omitted

# reduce 8 omitted

module_eval(<<'.,.,', 'feature_parser.racc', 18)
  def _reduce_9(val, _values, result)
     @scenarios.push Scenario.new(val[1], @steps); @steps = Array.new 
    result
  end
.,.,

# reduce 10 omitted

# reduce 11 omitted

module_eval(<<'.,.,', 'feature_parser.racc', 24)
  def _reduce_12(val, _values, result)
     @steps << Step.new(val[1].strip) 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class FeatureParser
  end   # module Raccumber
