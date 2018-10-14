=begin
Divisors

Write a method that returns a list of all of the divisors of 
the positive integer passed in as an argument. The return value 
can be in any sequence you wish.

Examples

divisors(1) == [1]
divisors(7) == [1, 7]
divisors(12) == [1, 2, 3, 4, 6, 12]
divisors(98) == [1, 2, 7, 14, 49, 98]
divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
=end

def divisors(int)
	(1..int).select { |num| int % num == 0 }
end

=begin
	Problem
		- What are divisors?
			- divisors are numbers that divides an integer exactly - no remainders
		- How do I create a complete list of all the divisors fo
			the positive integer passed in as an argument?
			- Lets create a range 1..arg
		- How do I then check that each number is a divisor to the arg?
			- Lets iterate over the range - and select each number
				that can divide equally by the arg with no remainder.
				- lets use Integer#modulo
		- What sequence would I like to sort by
			- Lets make the return value an array, and sorted low to high			

	Examples
=end

puts divisors(1) == [1]
puts divisors(7) == [1, 7]
puts divisors(12) == [1, 2, 3, 4, 6, 12]
puts divisors(98) == [1, 2, 7, 14, 49, 98]
puts divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute

=begin	
	Data-structures
	Algorithm
		create range
		interate over range
		select block argument if its equally divisable by arg supplied
		sort array
		return array
	Code
=end
