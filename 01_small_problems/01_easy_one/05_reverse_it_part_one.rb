=begin 
Write a method that takes one argument, a string, and returns the same string with the words in reverse order.

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

The tests above should print true
=end

def reverse_sentence(str)
  array = str.split
  array.sort! { |x, y| y <=> x }
  reversed_string = array.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

