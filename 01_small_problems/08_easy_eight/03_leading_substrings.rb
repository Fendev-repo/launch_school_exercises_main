=begin
  Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

  Examples:
=end

def substrings_at_start(str)
  new_ary = []
  str.chars.each_with_index do |char, indx|
    new_ary << str.slice(0, indx + 1)
  end
  new_ary
end


puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
