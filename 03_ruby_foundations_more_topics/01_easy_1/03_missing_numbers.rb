=begin
Find Missing Numbers
Write a method that takes a sorted array of integers as an argument, 
and returns an array that includes all of the missing integers 
(in order) between the first and last elements of the argument.

Examples:

missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
missing([1, 2, 3, 4]) == []
missing([1, 5]) == [2, 3, 4]
missing([6]) == []
=end

# Solution: Option A 
def missing(ary)
	ary = ary.sort
	first_num = ary.first
	last_num = ary.last

	(first_num..last_num).select do |num|
		next if ary.include? num
		num
	end
end

# Solution:  B
def missing(ary)
	ary = ary.sort
	(ary.first..ary.last).to_a - ary
end

=begin
	Problem
		- Do I need to sort the array argument to be safe?
			- Yes, I think sort it just in case.
				Just use the Array#sort
		- How do I identify the missing numbers?
			- First take the first and last numbers of the arg array
				arg_array.first, arg_array.last = first, last
			- Then use those numbers in a range 
				(first..last) and iterate through each number
				and append to new_array if current number
				is not included in the array	 
				
	Examples
=end

puts missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
puts missing([1, 2, 3, 4]) == []
puts missing([1, 5]) == [2, 3, 4]
puts missing([6]) == []

=begin
	Data-structures
	Algorithm
		- Sort arg array
		- create range using first and last arg array Integers
		- interate through range
		- if num NOT included in args array - then append to new_ary
	Code
=end	
