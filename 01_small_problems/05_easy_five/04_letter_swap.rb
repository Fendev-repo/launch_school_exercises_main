require 'pry-byebug'
=begin
  Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word is swapped.

  You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

  Examples:
=end

def swap(string)
  ary = string.split
  ary.each do |word|
    if word.length >= 2
      first_letter = word[0]
      last_letter = word[-1]
      word[0] = last_letter
      word[-1] = first_letter
    end
  end
  ary.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'