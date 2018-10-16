=begin
count
NOTE: This exercise was originally a duplicate from the previous 
exercise set. We have modified it slightly, but some of the posted 
solutions still reflect the original wording.

The Enumerable#count method iterates over the members of a collection, 
passing each element to the associated block. It then returns the 
number of elements for which the block returns a truthy value.

Write a method called count that behaves similarly for an arbitrarily 
long list of arguments. It should take 0 or more arguments and a block, 
and then return the total number of arguments for which the block 
returns true.

If the argument list is empty, count should return 0.

Your method may use #each, #each_with_object, #each_with_index, #inject, 
loop, for, while, or until to iterate through the Array passed in as 
an argument, but must not use any other methods that iterate through an 
Array or any other collection.

=end

def count(*collection)
	return 0 if collection.empty?
	num_true_vals_from_block = 0

	collection.each do |element|
		num_true_vals_from_block += 1 if yield element
	end
	num_true_vals_from_block
end

=begin
	Problem
		- What is the best way to accept an arbitrary number of
			of arguments?
			- lets use the splat operator to capture all the args
		- What is the best way to count all block return values that
			are true?
			- lets initialize a local variable called num_true_vals_from_block
				and assign it to zero.  The during each interation of the block
				if the block returns true then increment by one.
		- Based on the options provided above - what method for iteration is best?
			- Again, lets keep this simple, and use Enumerable#each method
		- What is the best way to ensure that when there are not args
			passed to the method that the method will return 0?
			- lets use a guard clause - which will return out of the method
				if the args* is empty?				

	Examples
	Data-structures
	Algorithm
		Return out of the method if *args is empty?
		initialize the num_true_vals_from_block and assign it the value 0
		Enumerable#each to iterate over the collection
			if the return value from the block is true
				then increment by one
		return num_true_vals_from_block 
	Code
=end



# Examples:
puts count(1, 3, 6) { |value| value.odd? } == 2
puts count(1, 3, 6) { |value| value.even? } == 1
puts count(1, 3, 6) { |value| value > 6 } == 0
puts count(1, 3, 6) { |value| true } == 3
puts count() { |value| true } == 0
puts count(1, 3, 6) { |value| value - 6 } == 3