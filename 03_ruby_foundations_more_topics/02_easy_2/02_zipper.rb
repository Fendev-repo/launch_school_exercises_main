=begin
Zipper

The Array#zip method takes two arrays, and combines 
them into a single array in which each element is a 
two-element array where the first element is a value 
from one array, and the second element is a value 
from the second array, in order. For example:

[1, 2, 3].zip([4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
Write your own version of zip that does the same type 
of operation. It should take two Arrays as arguments, 
and return a new Array (the original Arrays should 
not be changed). Do not use the built-in Array#zip 
method. You may assume that both input arrays have 
the same number of elements.

Example:

zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
=end

def zip(ary1, ary2)
	new_array_of_zipped_arys = []

	# This makes sure we use the longest array
	# and we interate the correct number of times
	[ary1, ary2].sort[0].length.times do |indx|
		 new_array_of_zipped_arys << [ary1[indx], ary2[indx]]
	end
	new_array_of_zipped_arys
end


=begin
	Problem
		- What is the best way to interate the right number of
			times to create the desired array output. i.e combined
			array.
			- Lets use the longest array that is passed as an argument
				- We can simply place both argunents in an outer array
					and sort then take the first index item.
					The length of this array can be the num of times
					to interate.  num.times do |block_var|
			- What is the best way to combine these two arrays
				and create a new array of subarrays which is the 
				convbination of array elements based on index
				- We can use the block_var as the index to 
					return values from both arrays at that index
					we can then place those return values
					in an Array literal
					then append the array literal onto the return
					value array. i.e. the new array of arrays. 		

	Examples
	Data-structures
	Algorithm
		Declare new_array_of_zipped_arys var
		Declare ary_arg1 and ary_arg2 within an array literal
		sort array literal
		return index zero of array literal and save to var longest_arg_ary
		using longest_arg_ary.length.times iterate 
		using block variable return value at index for both arrays
		declare both values in array literal
		append new sub-array onto new_array_of_zipped_arys
		return new_array_of_zipped_arys
	Code
=end


puts zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]

