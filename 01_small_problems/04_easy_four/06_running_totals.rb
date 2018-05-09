require 'pry-byebug'
=begin
  Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

  Try solving this problem using Array#each_with_object or Enumerable#inject (note that Enumerable methods can be applied to Arrays).
=end

# Solution A:
def running_total(ary)
  total = 0
  new_ary = ary.map do |num|
    total += num
  end
  new_ary
end


# Solution B:
def running_total(ary)
  total = 0 
  new_ary = ary.each_with_object([]) do |num, ary|
   ary << total += num
  end
  new_ary
end


puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []