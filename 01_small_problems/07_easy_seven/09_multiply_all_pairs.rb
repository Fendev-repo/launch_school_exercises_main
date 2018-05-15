=begin
  Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

  You may assume that neither argument is an empty Array.

  Examples:
=end

def multiply_all_pairs(ar1, ar2)
  new_array = ar1.product(ar2).map! do |ary|
    ary[0] * ary[1]
  end
  new_array.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]