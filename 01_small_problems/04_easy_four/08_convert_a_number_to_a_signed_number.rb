=begin
  In the previous exercise, you developed a method that converts simple numeric strings to Integers. In this exercise, you're going to extend that method to work with signed numbers.

  Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

  You may assume the string will always contain a valid number.

  You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

  Examples
=end

def string_to_signed_integer(string)
  strs_and_ints = {
  '1' => 1, '2' => 2,
  '3' => 3, '4' => 4,
  '5' => 5, '6' => 6,
  '7' => 7, '8' => 8,
  '9' => 9, '0' => 0
  }
  # Confirm sign and delete from string
  if string.chars.include?('-')
    string = string.delete('-') 
    sign = '-'
  elsif string.chars.include?('+')
    string = string.delete('+')
    sign = '+'
  end    

  # Map each string character to a integer - save to array
  integer = string.chars.map do |num|
    int = strs_and_ints[num]
  end

  # Convert array of integers to single integer
  int = integer.inject { |a, i| a * 10 + i }

  # Prepend the correct sign to the integer
  if sign == '-'
    -int
  elsif sign == '+'
    +int
  else
    int
  end 
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100



