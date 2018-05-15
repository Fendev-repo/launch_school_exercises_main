
=begin
  Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

  Examples
=end

def letter_case_count(str)
  new_hsh = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }
  str.chars.each do |chr|  
    if ('A'..'Z').include?(chr)
      new_hsh[:uppercase] += 1
    elsif ('a'..'z').include?(chr)
      new_hsh[:lowercase] += 1 
    else
      new_hsh[:neither] += 1 
    end
  end
  new_hsh
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }