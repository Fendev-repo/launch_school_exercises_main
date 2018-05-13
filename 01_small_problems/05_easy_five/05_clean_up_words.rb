require 'pry-byebug'
=begin
  Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

  Examples:
=end

def cleanup(string)
  string.gsub!(/[^[a-zA-Z]]/, ' ')
  string.squeeze!
end

puts cleanup("---what's my +*& line?") == ' what s my line '
