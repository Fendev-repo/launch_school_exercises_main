=begin
  Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

  Examples:
=end

def balanced?(str)
  new_ary = str.chars.select do |char|
    char == '(' || char == ')'
  end
  return true if new_ary.empty?
  new_ary.length.even? && ( new_ary.first == '(' && new_ary.last == ')' )
end


puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false