=begin
  Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

  Examples
=end

def swap_name(str)
  last, first = str.split.each_slice(1).to_a
  "#{first[0]}, #{last[0]}"
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'