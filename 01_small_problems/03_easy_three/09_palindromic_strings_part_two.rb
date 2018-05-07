=begin
  Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.
=end

def real_palindrome?(string)
  updated_string = string.downcase.gsub(/[^0-9a-z ]/, ' ').split.join
  updated_string.reverse == updated_string ? true : false
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false