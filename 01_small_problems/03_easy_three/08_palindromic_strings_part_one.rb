=begin
  Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.
=end

# Solution
# def palindrome?(string)
#   string == string.reverse ? true : false
# end

# puts palindrome?('madam') == true
# puts palindrome?('Madam') == false          # (case matters)
# puts palindrome?("madam i'm adam") == false # (all characters matter)
# puts palindrome?('356653') == true


# Further Exploration Solution

def palindrome?(args)

  if args.class == Array
    args.join.reverse == args.join ? true : false
  elsif args.class == String
    args == args.reverse ? true : false
  end   
end


puts palindrome?('madam') == true
puts palindrome?(['Madam', 'wow', 'pop']) == false # (case matters)
puts palindrome?(['madam', 'wow', 'pop']) == false # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true


