
=begin
  Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

  Example:
=end

def staggered_case(str)
  new_str = ''
  counter = 0
  str.chars.each do |char|
    char = char.downcase
    if counter.even? && ('a'..'z').include?(char)
      new_str << char.upcase
      counter += 1
    elsif counter.odd? && ('a'..'z').include?(char)
      new_str << char.downcase
      counter += 1
    else
      new_str << char
    end
  end
  new_str
end


puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'