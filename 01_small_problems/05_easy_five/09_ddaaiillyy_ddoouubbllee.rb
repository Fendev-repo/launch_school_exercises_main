require 'pry-byebug'
=begin
  Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

  Examples:
=end  

def crunch(str)
  ary = str.split
  last_letter = ''
  new_array = ary.map do |word|
    word.chars.each_with_object([]) do |char, ary|
      next if char == last_letter
      last_letter = char  
      ary << char        
    end
  end
  new_string = new_array.map { |word| word.join }.join(' ')
end


puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''