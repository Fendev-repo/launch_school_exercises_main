=begin
  Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

  You may not use String#swapcase; write your own version of this method.

  Example:
=end

def swapcase(str)
  new_str = str.split.map do |word|
    word.chars.map do |chr|
      if ('A'..'Z').include?(chr)
        chr.downcase
      elsif ('a'..'z').include?(chr)
        chr.upcase
      else
        chr
      end
    end.join  
  end
  new_str.join(' ') 
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'