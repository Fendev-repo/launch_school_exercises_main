require 'pry-byebug'
=begin
  Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

  Examples:
=end

# Solution A:
def multiply_list(ary1, ary2)
  new_ary = []
  ary1.each_with_index do |num, indx|
    new_ary << num * ary2[indx]
  end
  new_ary
end

# Option B:
def multiply_list(ary1, ary2)
  ary1.zip(ary2).map { |a1, a2| a1 * a2 }
end


puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]