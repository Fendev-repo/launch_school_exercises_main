=begin
  Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

  You may (and should) use the substrings_at_start method you wrote in the previous exercise:

  Examples:
=end

def substrings(str)
  new_ary = []
  ary_of_chars = str.chars
  position = 0
  current_char = ''
  loop do 
    ary_of_chars.each_with_index do |char, indx|
      new_ary << str.slice(position, indx + 1)
      current_char = char
    end
    position += 1  
    break if new_ary.last == ary_of_chars.last
  end
  new_ary.uniq
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
