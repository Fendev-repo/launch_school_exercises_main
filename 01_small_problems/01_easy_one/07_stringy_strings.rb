=begin
  Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

  Examples:

  puts stringy(6) == '101010'
  puts stringy(9) == '101010101'
  puts stringy(4) == '1010'
  puts stringy(7) == '1010101'
=end

# Option A:
# def stringy(int)
#   count = 0
#   string = ''
#   until count >= int
#     if count.even? 
#       string << '1'
#     elsif count.odd?
#       string << '0'
#     end  
#     count += 1
#   end
#   string 
# end

# Option B

# def stringy(num, start_with='1')
#   array = []

#   num.times.each do |n|
#     if n.even?
#       array << '1'
#     else
#       array << '0'
#     end
#   end
#   array.join
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'


=begin 
  Further Exploration
  Modify stringy so it takes an optional argument that defaults to 1. If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.
=end

def stringy(num, start_with=0)
  numbers = []

  num.times do |index|
    if start_with == 1
      number = index.even? ? 1 : 0
      numbers << number
    else 
      number = index.even? ? 0 : 1
      numbers << number
    end 
  end
  numbers.join
end




puts stringy(6) == '010101'
puts stringy(9) == '010101010'
puts stringy(4) == '0101'
puts stringy(7) == '0101010'












