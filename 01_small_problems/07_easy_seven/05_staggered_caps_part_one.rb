=begin
  Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

  Example: 
=end

def staggered_case(str)
  new_str = ''
  str.chars.each_with_index do |char, indx|
    char = char.downcase
    if indx.even? && ('a'..'z').include?(char)
      new_str << char.upcase    
    elsif indx.odd? && ('a'..'z').include?(char)
      new_str << char.downcase
    else
      new_str << char
    end
  end
  new_str
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
