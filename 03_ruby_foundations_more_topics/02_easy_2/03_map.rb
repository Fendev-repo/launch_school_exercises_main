=begin
map
Lets return to implementing existing core ruby methods 
to learn about blocks.

The Enumerable#map method iterates over the members 
of a collection, using the associated block to perform 
some sort of operation on each collection member. The 
returned values from the block are then built up into 
an Array that is then returned to the caller. Note in 
particular that every time #map yields to the block, 
it obtains just one value. That value may be a complex 
value - it may even be another collection - but it is 
nevertheless just one value. Thus, #map returns an Array 
that has the same number of elements that the original 
collection had.

Write a method called map that behaves similarly for 
Arrays. It should take an Array as an argument, and 
a block. It should return a new Array that contains 
the return values produced by the block for each element 
of the original Array.

If the Array is empty, map should return an empty Array, 
regardless of how the block is defined.

Your method may use #each, #each_with_object, 
#each_with_index, #inject, loop, for, while, or 
until to iterate through the Array passed in as an 
argument, but must not use any other methods that 
iterate through an Array or any other collection.
=end

def map(collection)
  return [] if collection.empty?
  return_array = []

  collection.each { |element|  return_array << yield(element) }  
  return_array
end

=begin
 Problem
 	- What is the best way to ensure that the return value array
 		has the same number of elements that the argument array has?
 		- If we simply interate over the argument array - then that
 		  will ensure that the number of interations is correct.
 	- What is the best way to ensure that empty array arguments return
 		out of the method with an empty array?
 		- lets use a guard clause - and is arg array empty? then return
 			empty array literal
 	- Based on the description of the approved methods - what is the best
 		choice?
 		- Unless there is an issue with implementation - lets keep it simple
 			and use the Enumerable#each method.		
 		  
 Examples
 Data-structures
 Algorithm
 	return out of the method if arg array is empty?
 	initialize and assign a local variable return_array to a empty
 		array
 	use Enumerable#each to iterate over each of the arg array elements
 		yield each element to the block
 		append the return block value to new_ary
 	return new_ary	 
 Code
=end

# Examples:

puts map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
puts map([]) { |value| true } == []
puts map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
puts map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
puts map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]

