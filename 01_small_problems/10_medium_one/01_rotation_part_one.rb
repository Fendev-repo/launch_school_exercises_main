=begin
  Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

  Do not use the method Array#rotate or Array#rotate! for your implementation.

  Example:

  Further Exploration
  Write a method that rotates a string instead of an array. Do the same thing for integers. You may use rotate_array from inside your new method.
=end

def rotate_array(ary)
  new_ary = ary.dup
  first_item = new_ary.shift
  new_ary.push(first_item)
  new_ary
end


puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true



# Further Exploration

def rotate_string(str)
  rotate_array(str.chars).join
end

puts rotate_string('beans') == 'eansb'

def rotate_integer(int)
  rotate_array(int.digits.reverse).join.to_i
end

puts rotate_integer(12345) == 23451

