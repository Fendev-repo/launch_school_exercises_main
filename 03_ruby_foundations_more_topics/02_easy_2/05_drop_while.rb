=begin
drop_while
The Enumerable#drop_while method begins by iterating 
over the members of a collection, passing each element 
to the associated block until it finds an element for 
which the block returns false or nil. It then converts 
the remaining elements of the collection (including the 
element that resulted in a falsey return) to an Array, 
and returns the result.

Write a method called drop_while that behaves similarly 
for Arrays. It should take an Array as an argument, and 
a block. It should return all the elements of the Array, 
except those elements at the beginning of the Array that 
produce a truthy value when passed to the block.

If the Array is empty, or if the block returns a truthy 
value for every element, drop_while should return an empty 
Array.

Your method may use #each, #each_with_object, #each_with_index, 
#inject, loop, for, while, or until to iterate through the 
Array passed in as an argument, but must not use any other 
methods that iterate through an Array or any other collection.
=end

def drop_while(collection)
	return [] if collection.empty?
	block_rtn_vals = []

	collection.each_with_index do |element, idx|
		next if yield(element)
		return block_rtn_vals = collection.slice(idx, collection.length)
	end
	[]
end

=begin
	Problem
		- What is the best way to ensure the method returns
			an empty array if there are not arguments passed to the
			method?
			- lets use a guard clause to return out of the method
				if the arg array is empty?
		- What is the best way to ensure the method returns
			an empty array if all return values from the block
			are truthy?
			- Lets use the Enuerable#all? method to validate if
				all the values are truthy.
		- What is the best way to slice the arry arg into
			a sub array - which starts at the first falsey return
			value and ends at the end of the arg array?
			- lets use the Enumerable#each_with_index method
				to interate over the elelemts.
				If the return value is falsey, then
				use that index to the end of the array
				as the return value elements.				
		

	Examples
	Data-structures
	Algorithm
		return an empty array out of the method if arg to the
			method is empty?
		initialize a local variable not_droped_block_rtn_vals and 
			assign it and empty array literal
		Enuerable#each to iterate over the elements
			if the block return value is falsey then append
				value to the not_droped_block_rtn_vals
		return not_droped_block_rtn_vals	
	Code
=end

#Examples:

puts drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
puts drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
puts drop_while([1, 3, 5, 6]) { |value| true } == []
puts drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
puts drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
puts drop_while([]) { |value| true } == []
