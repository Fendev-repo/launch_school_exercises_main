=begin 
  Write a method that takes an Array as an argument, and returns two Arrays that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

=end

def halvsies(ary)
  halved_array = []
  if ary.length.odd?
    halved_array << ary.slice!(0, ary.length / 2 + 1)
    halved_array << ary
  elsif ary.length.even?
    halved_array << ary.slice!(0, ary.length / 2)
    halved_array << ary
  end
  halved_array
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]