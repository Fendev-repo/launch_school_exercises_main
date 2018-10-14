=begin
Optional Blocks

Write a method that takes an optional block. If the block is specified, 
the method should execute it, and return the value returned by the block. 
If no block is specified, the method should simply return the String 
'Does not compute.'.

Examples:
	compute { 5 + 3 } == 8
	compute { 'a' + 'b' } == 'ab'
	compute == 'Does not compute.'	
=end


def compute(arg='nothing passed')
	if block_given? 
		yield arg
	else 
		'Does not compute.'
	end
end

=begin
	Problem
		- How do implement a method with an optional block?
			- All methods can take a block - you don't need to change
				the method definition signature at all - for implicitly 
				accepting a block within a method
		- How do I best manange both possiblities - both taking a block and not?
				- Use the build in method Kernel#block_given? method to check
					if a block is passed to the method or not.

	Examples
=end

puts compute { 5 + 3 } == 8
puts compute { 'a' + 'b' } == 'ab'
puts compute == 'Does not compute.'	
puts compute(1) { |arg| puts arg } 	
puts compute('hello') { |arg| puts arg }	
puts compute(332) { |arg| puts arg }	

=begin
	Data-structures
	Algorithm
	Code
=end


