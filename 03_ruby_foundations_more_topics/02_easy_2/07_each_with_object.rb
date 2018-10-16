=begin
each_with_object
The Enumerable#each_with_object method iterates over 
the members of a collection, passing each element 
and an arbitrary object (usually a collection) to 
the associated block. The value returned by the block 
is not used. The object that is passed to the block 
is defined as an argument to each_with_object; with 
each iteration, this object may be updated by the 
block. When iteration is complete, the final value 
of the object is returned.

Write a method called each_with_object that behaves 
similarly for Arrays. It should take an Array and an 
object of some sort as an argument, and a block. It 
should yield each element and the object to the block. 
each_with_object should return the final value of 
the object.

If the Array is empty, each_with_object should return
the original object passed as its second argument.

Your method may use #each, #each_with_index, #inject, 
loop, for, while, or until to iterate through the Array 
passed in as an argument, but must not use any other 
methods that iterate through an Array or any other 
collection.
=end

def each_with_object(collection, arg_obj)
	arg_object = arg_obj

	collection.each { |element| yield(element, arg_object) }
	arg_object
end

=begin
	Problem
		- What is best way to iterate over the collection
			- lets use the Enumerable#each
		- What is the best way to pass the arg object to the
			block?
			- lets save the arg object to a local variable called
				arg_object
		- What is the best way to return the arg_object once all
			iterations are complete?
			- Lets just return the arg_object - as any mutations
				that occured during any of the block iterations
				has mutated the object in memory that the arg_object
				still points to.

	Examples
	Data-structures
	Alogrithm
		declare a local variable called arg_object and
			assign the arg object to it.
		Enumerable#each to iterate over each element
			yield both the element and arg_object
		return arg_object	
	Code
=end


#Examples:

result = each_with_object([1, 3, 5], []) do |value, list|
  list << value**2
end
puts result == [1, 9, 25]

result = each_with_object([1, 3, 5], []) do |value, list|
  list << (1..value).to_a
end
puts result == [[1], [1, 2, 3], [1, 2, 3, 4, 5]]

result = each_with_object([1, 3, 5], {}) do |value, hash|
  hash[value] = value**2
end
puts result == { 1 => 1, 3 => 9, 5 => 25 }

result = each_with_object([], {}) do |value, hash|
  hash[value] = value * 2
end
puts result == {}