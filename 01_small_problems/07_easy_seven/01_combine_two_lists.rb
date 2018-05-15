=begin
  Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

  You may assume that both input Arrays are non-empty, and that they have the same number of elements.

  Example:
=end

# Solution A:
# def interleave(ary1, ary2)
#   count = 0
#   new_ary = []
#   ary1.each do |_|
#     new_ary << ary1[count]
#     new_ary << ary2[count]
#     count += 1
#   end
#   new_ary 
# end


# Solution B: Using Array#zip

def interleave(ary1, ary2)
  ary1.zip(ary2).flatten
end


puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']