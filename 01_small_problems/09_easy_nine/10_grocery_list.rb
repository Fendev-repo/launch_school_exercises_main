=begin
  Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

  Example:
=end

def buy_fruit(ary)
  new_ary = ary.each_with_object([]) do |sub_ary, new_ary|
    sub_ary[1].times { |_| new_ary << sub_ary[0] }
  end
  new_ary
end


puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]