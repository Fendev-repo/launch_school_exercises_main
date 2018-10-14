=begin
Iterators: True for One?
In the previous 3 exercises, you developed methods called any?, 
all?, and none? that are similar to the standard Enumerable methods 
of the same names. In this exercise, you will develop one last 
method from this family, one?.

Enumerable#one? processes elements in a collection by passing each 
element value to a block that is provided in the method call. If 
the block returns a value of true for exactly one element, then 
#one? returns true. Otherwise, #one? returns false. Note in 
particular that #one? will stop searching the collection the second 
time the block returns true.

Write a method called one? that behaves similarly for Arrays. 
It should take an Array as an argument, and a block. It should 
return true if the block returns true for exactly one of the 
element values. Otherwise, it should return false.

Your method should stop processing elements of the Array as 
soon as the block returns true a second time.

If the Array is empty, one? should return false, regardless 
of how the block is defined.

Your method may not use any standard ruby method that is 
named all?, any?, none?, or one?.
=end

def one?(collection)
	return false if collection.empty?
	block_rtn_true_count = 0

	collection.each do |element|
		block_rtn_true_count += 1 if yield element
		return false if block_rtn_true_count > 1
	end

	block_rtn_true_count == 1 ? true : false
end


=begin
	Problem
		- What is the best way to return false out of the array
			if the array is empty?
			- Same as previous - use the Array#empty? as a guard clause
		- What is the best way to interate over each element in
			the array
			- Same as before - use Kernel#each
		- What is the best way to validate that there is only
			one return value that is true - during the iteratiom
			process?
			- Lets create a local variable called count.  Count
				will be incremented by 1 for every return value from
				the block that is true.
				Before each iteration to the block is yielded, the
				method will evaluate if count is > 1.  If count is
				greater than 1 - then return false out of the method.
				return true if the Array#each method has completed
				without returning false and count is equal to 1.

	Examples
	Data-structures
	Algorithm
		Use a guard clause to return false if the array is empty?
		assign the local variable block_rtn_true_count = 0
		Use Array#each method to iterate over each element of the array argument
			yield each element to the block
			increment the block_rtn_true_count if the block returns true
			return out of the method if block_rtn_true_count is > 1
		return true if block_rtn_true_count = 1
	Code
=end
#Examples:

puts one?([1, 3, 5, 6]) { |value| value.even? }    == true
puts one?([1, 3, 5, 7]) { |value| value.odd? }     == false
puts one?([2, 4, 6, 8]) { |value| value.even? }    == false
puts one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
puts one?([1, 3, 5, 7]) { |value| true }           == false
puts one?([1, 3, 5, 7]) { |value| false }          == false
puts one?([]) { |value| true }                     == false

