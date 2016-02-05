require "gr-util/gr-util"
require 'test/unit'

#
# Author:: Giorgio Desideri <giorgio.desideri@gmail.com>
#
class GRUtilTest < Test::Unit::TestCase
  
  # Test is_empty() method
  def test_custom()
    b = Proc.new { |x| puts x }
    GRUtil.custom("Hello World!", b)
  end

  # Test is_empty() method
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

  #
  # Test is_same_duck() method
  #
  def test_same_duck()
    x = GRUtilTestClass.new("1")

    res = GRUtil.is_same_duck?(x, x)
    assert_same true, res

    y = GRUtilTestClass.new("2")

    res = GRUtil.is_same_duck?(x, y)
    assert_same true, res

    z = Array.new

    res = GRUtil.is_same_duck?(x, z)
    assert_same false, res
  end

  #
  # Test class definition
  #
  class GRUtilTestClass

    attr_reader :x
    def initialize(x)
      @x = x
    end

    def ==(other)
      if(other.x === @x) then
        true
      else
        false
      end
    end

  end
end
