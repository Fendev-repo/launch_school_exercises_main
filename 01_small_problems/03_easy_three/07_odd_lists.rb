=begin
  Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

  Further Exploration
  Write a companion method that returns the 2nd, 4th, 6th, and so on elements of an array.

  Try to solve this exercise in at least 2 additional ways.
=end

# First solution
# def oddities(ary)
#   new_array = []
#   ary.each_with_index { |item, index| new_array << item if index.even? }
#   new_array
# end

# puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# puts oddities(['abc', 'def']) == ['abc']
# puts oddities([123]) == [123]
# puts oddities([]) == []

# Further Exploration solution
def oddities(ary)
  new_array = []
  ary.each_with_index do |item, index| 
    next if index == 0
    new_array << item if index.even? 
  end
  new_array
end



puts oddities([2, 3, 4, 5, 6]) == [4, 6]
puts oddities(['abc', 'def']) == []
puts oddities([123]) == []
puts oddities([]) == []
