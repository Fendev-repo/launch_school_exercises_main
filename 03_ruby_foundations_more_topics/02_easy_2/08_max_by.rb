=begin
max_by

The Enumberable#max_by method iterates over the members of 
a collection, passing each element to the associated block. 
It then returns the element for which the block returned the 
largest value.

Write a method called max_by that behaves similarly for 
Arrays. It should take an Array and a block, and return the 
element that contains the largest value.

If the Array is empty, max_by should return nil.

Your method may use #each, #each_with_object, #each_with_index, 
#inject, loop, for, while, or until to iterate through the Array 
passed in as an argument, but must not use any other methods that 
iterate through an Array or any other collection.
=end

def max_by(collection)
	return nil if collection.empty?
	element_indx_hsh = {}

	collection.each_with_index do |element, idx|
	 blk_rtn_val = yield element
	 element_indx_hsh[blk_rtn_val] = idx	
	end

	largest_idx = element_indx_hsh[element_indx_hsh.keys.max]
	collection[largest_idx]
end

=begin
	Problem
		- What is the method to interate over the collection,
			based on the above requirements?
			- Lets use the #each_with_index
		- What is the best way to identify which element
			will return the largest value?
			- Lets create a local variable called largest_element_index
				during each interation if the block
				return value is greater than the last largest
				then replace the largest with the new largest
				save the element index only
		- What is the best way to return the largest element
			- lets simply use the collection[index] syntax
		- What is the best way to ensure that if the arg array is
			empty that the return value is nil
			- Lets use a guard clause and return nil if
				arg array is empty?			
			
	Examples
	Data-structures
	Algorthm
		return nil if arg array is empty?
		initialize a local variable and call it largest_element_index
			and assign it 0.
		Enuerable#each_with_index to iterate over the collection
			if the current largest is less than the 
			current return value - then update the largest_element_index
			with the new largest element
		return collection[index] syntax
	Code
=end


# Examples:
puts max_by([1, 5, 3]) { |value| value + 2 } == 5
puts max_by([1, 5, 3]) { |value| 9 - value } == 1
puts max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
puts max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
puts max_by([-7]) { |value| value * 3 } == -7
puts max_by([]) { |value| value + 5 } == nil