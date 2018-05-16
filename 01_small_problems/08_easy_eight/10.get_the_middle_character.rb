=begin
  Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

  Examples:
=end

def center_of(str)
  str_length = str.length
  position_for_even = (str_length / 2) - 1
  position_for_odd = str_length / 2

  if str_length.even?
    str.slice(position_for_even, 2)
  else
    str.slice(position_for_odd, 1)
  end    
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'