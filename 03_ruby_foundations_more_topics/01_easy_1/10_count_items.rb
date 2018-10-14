require 'pry-byebug'

=begin
Count Items
Write a method that takes an array as an argument, 
and a block that returns true or false depending 
on the value of the array element passed to it. 
The method should return a count of the number of 
times the block returns true.

You may not use Array#count or Enumerable#count 
in your solution.
=end

def count(collection)
	block_rtn_true_count = 0

	collection.each { |element| block_rtn_true_count += 1 if yield element }
	block_rtn_true_count
end

# Further Exploration solution (see below)
def count(collection)
	block_rtn_true_count = 0

	for element in collection
		block_rtn_true_count += 1 if yield element
	end

	block_rtn_true_count
end



=begin
	Problem
		- What is the best way to interate over the collection argument
			elements?
			- Let's use the Enumerable#each method again
		- What is the best way to return the count of the number
			of times the block return value is true?
			- Lets use a local variable called block_rtn_true_count
				to increment by one - each time the block returns the 
				boolean true.
		- What is the best way to return out of the method with the
			block_rtn_true_count?
			- lets keep it simple and just declare the variable as
				the last line in the method.		
	Examples
	Data-structures
	Algorithm
		Assign the block_rtn_true_count to 0
		interate over the elements in the collection
			if the return value is true - then increment
			block_rtn_true_count by one.
		Declare block_rtn_true_count as the last line 
		in the method.	
	Code
=end

# Examples:
puts count([1,2,3,4,5]) { |value| value.odd? } == 3
puts count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
puts count([1,2,3,4,5]) { |value| true } == 5
puts count([1,2,3,4,5]) { |value| false } == 0
puts count([]) { |value| value.even? } == 0
puts count(%w(Four score and seven)) { |value| value.size == 5 } == 2


=begin
Further Exploration
Write a version of the count method that meets 
the conditions of this exercise, but also does 
not use each, loop, while, or until.

	Problem
		- Based on the list of things we cannot use, what the next
			best option for this exercise - to iterate over the collection?
			- Lets use the for loop.	 
	Examples
	Data-structures
	Algorithm
	Code
=end

