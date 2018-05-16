=begin
  Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

  You may (and should) use the substrings method you wrote in the previous exercise.

  For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

  Examples: 
=end

def is_palindrome?(str, just_down_case_alpha=false)
  return if str == nil || false
  if just_down_case_alpha
    str = str.gsub(/[^A-Za-z]/, '').downcase
    str == str.reverse
  else
    str == str.reverse
  end
end

def how_many_in_str(str, sub_ary)
  str.scan(/#{sub_ary}/).count
end

def palindromes(str)
  num_of_chars = str.chars.count
  new_ary = []
  position = 0
  
  loop do
    str.chars.each_with_index do |char, indx|
      sub_ary = str.slice(position, indx + 1)
      if is_palindrome?(sub_ary) && sub_ary.length > 1
        next if new_ary.include?(sub_ary)
        num_of_pattern_matches = how_many_in_str(str, sub_ary)
        num_of_pattern_matches.times { new_ary << sub_ary }
      end
    end
    position += 1 
    break if position == num_of_chars  
  end
  new_ary.sort
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada'].sort
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
].sort
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
].sort


