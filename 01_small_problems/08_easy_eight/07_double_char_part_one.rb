=begin
  Write a method that takes a string, and returns a new string in which every character is doubled.

  Examples
=end

def repeater(str)
  new_array = []
  str.chars.each { |chr| new_array << (chr * 2)}
  new_array.join
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''