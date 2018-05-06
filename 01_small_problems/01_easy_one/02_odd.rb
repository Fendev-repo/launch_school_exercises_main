# Write a method that takes one integer argument, which may be positive, negative, or zero. This method return true if the number's absolute value is odd. You may assume that the argument is a valid integer value.


def absolute_value_odd?(num)
  num.abs.odd?
end

p absolute_value_odd?(-7)
# => true