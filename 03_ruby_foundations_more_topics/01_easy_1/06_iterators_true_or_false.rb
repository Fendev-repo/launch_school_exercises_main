=begin
Iterators: True for Any?
A great way to learn about blocks is to implement some of the core ruby methods 
that use blocks using your own code. Over this exercise and the next several 
exercises, we will do this for a variety of different standard methods.

The Enumerable#any? method processes elements in a collection by passing 
each element value to a block that is provided in the method call. If 
the block returns a value of true for any element, then #any? returns true. 
Otherwise, #any? returns false. Note in particular that #any? will stop searching 
the collection the first time the block returns true.

Write a method called any? that behaves similarly for Arrays. It should take an 
Array as an argument, and a block. It should return true if the block returns true 
for any of the element values. Otherwise, it should return false.

Your method should stop processing elements of the Array as soon as the block 
returns true.

If the Array is empty, any? should return false, regardless of how the block is defined.

Your method may not use any standard ruby method that is named all?, any?, none?, 
or one?.

Examples:
=end

def any?(ary)
  ary = ary
  return false if ary.empty?
  counter = 0

  loop do
    block_rtn_val = yield ary[counter]

    return true if block_rtn_val == true 

    counter += 1
    break if counter >= ary.length
  end
  # If the method has not yet returned true - then it must
  # return false 
  false
end



=begin
	Problem
		- What is the best way to iterate over the array elements?
			- lets interate over the array using the Kernel#loop method
				- then using the yield to yield each element to the block
		- What is the best way to return true out of the method for 
			the first truthly return value?
			- lets save the return value from the block into a local
			  variable and interrogate the variable for either a boolean
			  if true - then return true out of the method
		- What is the best way to return false out of the method if the
			array argument is empty?
			- lets use a guard clause at the top of the body of the method
				and simply return false out of the method if the Array#empty?
				returns true 
	Examples
	Data-structures
	Algorithm
		use the guard clause and return out of the method if the array is empty?
		use the loop do to iterate over each array element
		yield each element to the block
		save the block return value into a local variable
		return out out of the method if the return value is true
		outside the loop - return false # So, in other words, return false
			if none of the array values returned a boolean true value	
	Code
=end

puts any?([1, 3, 5, 6]) { |value| value.even? } == true
puts any?([1, 3, 5, 7]) { |value| value.even? } == false
puts any?([2, 4, 6, 8]) { |value| value.odd? } == false
puts any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
puts any?([1, 3, 5, 7]) { |value| true } == true
puts any?([1, 3, 5, 7]) { |value| false } == false
puts any?([]) { |value| true } == false