=begin
each_with_index
The Enumerable#each_with_index method iterates 
over the members of a collection, passing each 
element and its index to the associated block. 
The value returned by the block is not used. 
each_with_index returns a reference to the original 
collection.

Write a method called each_with_index that behaves 
similarly for Arrays. It should take an Array as an 
argument, and a block. It should yield each element 
and an index number to the block. each_with_index should 
return a reference to the original Array.

Your method may use #each, #each_with_object, #inject, 
loop, for, while, or until to iterate through the Array 
passed in as an argument, but must not use any other 
methods that iterate through an Array or any other collection.

=end
def each_with_index(collection)
	index_counter = 0

	collection.each do |element|
		yield(element, index_counter)
		index_counter += 1
	end
end


=begin
	Problem
		- What is the best way to iterate over the collection?
			- lets use the Enumerable#each method
		- What is the best way to create and include an
			index with each iteration?
			- We can initialize a new variable called index
				and set that variable to 0.
				Then during each interaton that index can be 
				incremented.
		- What is the best way to return a reference to the 
			original array?
			- we can simply return the arg - by declaring the arg
				as the last line in the method definition		 

	Examples
	Data-structures
	Algorithm
		Initialize the variable index_counter = 0
		Enumerable#each to iterate over the collection
			yield both element and index_counter
			increment index_counter by one
		return arg collection
	Code
=end

# Examples:
result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]

# 0 -> 1
# 1 -> 3
# 2 -> 36
# true