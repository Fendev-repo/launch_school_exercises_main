=begin
  Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

  Examples:
=end

CONSONANTS = ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'X', 'Z', 'W', 'Y']

def double_consonants(str)
  new_ary = ''
  str.chars.each do |char|
    upcase_char = char.upcase
    if CONSONANTS.include?(upcase_char)
      new_ary << char * 2 
    else 
      new_ary << char 
    end
  end
  new_ary
end


puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""