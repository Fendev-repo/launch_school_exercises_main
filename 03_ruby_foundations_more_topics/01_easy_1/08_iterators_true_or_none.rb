=begin
Iterators: True for None?
In the previous two exercises, you developed methods called any? 
and all? that are similar to the standard Enumerable methods with 
the same names. In this exercise, you will develop another of the 
methods in this family, none?.

Enumerable#none? processes elements in a collection by passing each 
element value to a block that is provided in the method call. If the 
block returns true for any element, then #none? returns false. 
Otherwise, #none? returns true. Note in particular that #none? will 
stop searching the collection the first time the block returns true.

Write a method called none? that behaves similarly for Arrays. It 
should take an Array as an argument, and a block. It should return 
true if the block returns false for all of the element values. 
Otherwise, it should return false.

Your method should stop processing elements of the Array as soon 
as the block returns true.

If the Array is empty, none? should return true, regardless of how 
the block is defined.

Your method may not use any of the following methods from the 
Array and Enumerable classes: all?, any?, none?, one?. You may, 
however, use either of the methods created in the previous two 
exercises.
=end


def none?(ary)
	return true if ary.empty?

	ary.each { |element| return false if yield element }
	true
end

=begin
Problem
	- What is the best way to return true out of the method
		if the array argument if empty?
		- Same as previous two - use a guard clause, and return true if
			Array#empty? is true
	- What is the best way to evaluate if all elements are true?
		- Lets use the Enumerable#each method to interate over
			each element in the array - yielding each element to the block
		- return false out of the block if any return value is false
		- After the Enumerable#each completes its execution and has
			not returned false out of the method, then return true.			 

Examples
Data-structures
Algorithm
	Use guard clause to return true if Array#empty?
	Use Enumerable#each to yield each element to the block
		return false out of the method if any of the block return
		values are false
	Return true # if Enumerable#each didn't return false out of the method	
Code
=end


puts none?([1, 3, 5, 6]) { |value| value.even? } == false
puts none?([1, 3, 5, 7]) { |value| value.even? } == true
puts none?([2, 4, 6, 8]) { |value| value.odd? } == true
puts none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
puts none?([1, 3, 5, 7]) { |value| true } == false
puts none?([1, 3, 5, 7]) { |value| false } == true
puts none?([]) { |value| true } == true
