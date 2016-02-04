require "gr/util/version"

#
# Module to collect all utility methods that need more than two lines.
#
# author Giorgio Desideri <giorgio.desideri@gmail.com>
#
module GRUtil
  #
  # Custom call of internal execution of block and an item as input
  #
  def GRUtil.custom(&block)
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
  def GRUtil.is_empty?(other)

    # check nil
    if other == nil
      false

      # check empty string
    elsif other.to_s != ''
      false

      # check repetition of whitespaces
    elsif other =~ "(^$|^.*@.*\..*$)"
      false

      # otherwise
    else
      true
    end
  end

end
