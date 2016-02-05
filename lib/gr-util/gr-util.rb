require "gr-util/version"

#
# Module to collect all utility methods that need more than two lines.
#
# Author:: Giorgio Desideri <giorgio.desideri@gmail.com>
#
module GRUtil
  #
  # Custom call of one PROC with some args
  #
  # Method return -1 if 1t parameter is not a Proc.
  #
  def GRUtil.custom(proc, *args)

    return -1 if !proc.instance_of?(Proc)
    
    # inner call
    proc.call(args)
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

  #
  # Compare two object and decide if they are same object class,
  # following duck typing concept.
  #
  def GRUtil.is_same_duck?(object1, object2)

    same_duck = false

    if (object1.instance_of? object2.class) then

      # check method
      m1 = object1.methods(true).sort
      m2 = object2.methods(true).sort

      # counter
      counter = 0

      # iterate --> check only names
      m1.each { |method| counter = counter + 1  if m2.include?(method) }

      # coerce number
      counter = (1.coerce(counter))[0]

      # check
      if(counter == m1.size) then
        # same duck
        same_duck = true
      end
    end

    same_duck
  end

end
