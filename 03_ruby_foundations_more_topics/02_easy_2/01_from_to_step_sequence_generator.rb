=begin
From-To-Step Sequence Generator

The Range#step method lets you iterate over a range 
of values where each value in the iteration is the 
previous value plus a "step" value. It returns the 
original range.

Write a method that does the same thing as Range#step, 
but does not operate on a range. Instead, your method 
should take 3 arguments: the starting value, the ending 
value, and the step value to be applied to each iteration. 
Your method should also take a block to which it will yield 
(or call) successive iteration values.
=end 

# Using a range
def step(start_val, end_val, step_val)
	(start_val..end_val).each_slice(step_val) do |slice|
 		yield slice[0]
 	end
 	nil
end

# Not using range
def step(start_val, end_val, step_val)
	new_ary = []
	start_val.upto(end_val) {|element| new_ary << element}

	new_ary.each_slice(step_val) do |slice|
 		yield slice[0]
 	end
 	nil
end


=begin
	Problem
		- What is the best way to interate from the starting
			value to the ending value?
			- The examples does not explicitly indicate that a 
				range cannot be used in the method implementation;
				therefore I will use a Range#each method to interate
				over the number of integers between the starting
				starting value and the ending value (start..end).each
		- What does the step method actually do?
			- The Range#step method 'steps over' or 'ignores' the
				argument number and any other numbers between 
				in the number sequence.
				so if you passed (1..6)#step(2) { |n| puts n }
					the output will be # => 1, 3,
		- What is the best way to 'step over' the 'step value'
			during each iteration? - thereby only passing the values
			- lets use the Enumerable#each_slice method.
				We can simple ignor everything in the slice
				except the first element.
				We can return only for the first element.  We are
				essentially 'stepping over' the step_val numbers. 

	Examples
		[1,2,3,4,5,6,7,8,9,10].step(1, 10, 3) {|e| print e + ", "}
			=> 1,4,7,10
		[1,2,3,4,5,6,7,8,9,10].step(1, 10, 5) {|e| print e + ", "}
			=> 1, 6
	Data-structures
	Algorithm
	Code
=end


# Example:

step(1, 10, 3) { |value| puts "value = #{value}" }

# value = 1
# value = 4
# value = 7
# value = 10
# What do you think would be a good return value for this method, and why?