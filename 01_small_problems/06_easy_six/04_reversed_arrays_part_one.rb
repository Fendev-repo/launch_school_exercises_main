=begin
  Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

  You may not use Array#reverse or Array#reverse!.

  Examples:
=end

def reverse!(ary)
  ary.sort! { |x,y| y <=> x }
end

puts reverse!([1,2,3,4]) == [4,3,2,1]
puts reverse!(['a', 'b', 'c', 'd']) == ['d', 'c', 'b', 'a'] 
puts reverse!(['abc']) == ['abc']


# list = [1,2,3,4]
# result = reverse!(list) # => [4,3,2,1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b c d e)
# reverse!(list) # => ["e", "d", "c", "b", "a"]
# list == ["e", "d", "c", "b", "a"]

# list = ['abc']
# reverse!(list) # => ["abc"]
# list == ["abc"]

# list = []
# reverse!(list) # => []
# list == []