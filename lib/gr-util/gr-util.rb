require "gr-util/version"

#
# Module to collect all utility methods that need more than two lines.
#
# Author:: Giorgio Desideri <giorgio.desideri@gmail.com>
#
module GRUtil
  #
  # Custom call of internal execution of block and an item as input
  #
  def GRUtil.custom(&block)

    # inner call
    block.call
  end

  #
  # Check if input object is an empty string.
  #
  # "empty string" expression means:
  # - not nil
  # - not equals to ''
  # - not a repetition of whitespaces characters
  #
  # If input is an object, method return -1, because accept only String object
  #
  def GRUtil.is_empty?(other)

    # check nil
    if other == nil then
      return true
    end

    # not applicable to object
    if ( other != nil && !other.instance_of?(String) ) then
      return -1
    end

    # check empty string
    if other.to_s === ''
      true

      # check repetition of whitespaces
    elsif other =~ /[\\s]+/
      true

      # otherwise
    else
      false
    end
  end

end
