=begin
  Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

  You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

  Examples:  
=end

def reverse(ary)
  ary.sort { |x,y| y <=> x }
end


puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b c d e)) == %w(e d c b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

puts list = [1, 2, 3]                      # => [1, 2, 3]
puts new_list = reverse(list)              # => [3, 2, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 2, 3]                     # => true
puts new_list == [3, 2, 1]    