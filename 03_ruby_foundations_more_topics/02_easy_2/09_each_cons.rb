=begin
each_cons (Part 1)

The Enumberable#each_cons method iterates over the 
members of a collection taking each sequence of n 
consecutive elements at a time and passing them to 
the associated block for processing. It then returns 
a value of nil.

Write a method called each_cons that behaves similarly 
for Arrays, taking the elements 2 at a time. The method 
should take an Array as an argument, and a block. It 
should yield each consecutive pair of elements to the 
block, and return nil.

Your method may use #each, #each_with_object, #each_with_index, 
#inject, loop, for, while, or until to iterate through the 
Array passed in as an argument, but must not use any other 
methods that iterate through an Array or any other collection.
=end

def each_cons(collection)
  collection.each_with_index do |element, idx|
    yield(collection.slice(idx, 2))
    break if (idx + 2) == collection.length 
  end
  nil
end

=begin
  Problem
	 - What is the best way to iterate over the collection
      for this example?
			- Lets use Enuerable#each_with_index
		- What is the best way to supply consecutive 2
			elements from the current iteration index?
			- During each iteration - we can simply
				slice the arg collection based on the current
				index and ending at the current index + 1
		- How will I ensure that the method returns nil
			- easy - lets just declare nil as the last 
				expression in to the method definition
		- How do I ensure that if there are only two
			elements that the method only iterates and
			yields to the block once?
			- lets have a guard clause in the interation
				method that breaks if the length of the
				arg array is only two elements					

	Examples
	Data-structure
	Algorithm
		Enuerable#each_with_index to iterate over the collection
			yield the sub array sliced by current index and index + 1
			break if collection arg length is less than or equal to 2
		reutrn nil	
	Code
=end

# Examples:
hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end

puts result == nil
puts hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([]) do |value1, value2|
  hash[value1] = value2
end
puts hash == {}

hash = {}
each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
puts hash == {'a' => 'b'}


