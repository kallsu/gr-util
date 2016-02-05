require "gr-util/gr-util"
require 'test/unit'

#
# Author:: Giorgio Desideri <giorgio.desideri@gmail.com>
#
class GRUtilTest < Test::Unit::TestCase
  def test_is_empty()

    # empty string
    str = ""
    result = GRUtil.is_empty?(str)
    assert_same true, result

    # null
    str = nil
    result = GRUtil.is_empty?(str)
    assert_same true, result

    # sequence of spaces
    #str = "     "
    #result = GRUtil.is_empty?(str)
    #assert_same true, result

    # not-empty string
    str = "Hello World"
    result = GRUtil.is_empty?(str)
    assert_same false, result

    # object
    str = Array.new()
    result = GRUtil.is_empty?(str)
    print {"Result is #{result} "}
    
    assert_same -1, result

  end
end