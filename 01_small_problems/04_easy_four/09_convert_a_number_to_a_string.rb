require 'pry-byebug'
=begin
  In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

  Write a method that takes a positive integer or zero, and converts it to a string representation.

  You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.
=end
def integer_to_string(int)
  strs_and_ints = {
    1 => '1', 2 => '2',
    3 => '3', 4 => '4',
    5 => '5', 6 => '6',
    7 => '7', 8 => '8',
    9 => '9', 0 => '0',
  }

  array_of_nums = int.digits
  array_of_strings = array_of_nums.map do |num|
    strs_and_ints[num]
  end
  updated_array = array_of_strings.reverse.join
end


puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'  