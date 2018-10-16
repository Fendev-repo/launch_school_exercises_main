=begin
Enumerable Class Creation

Assume we have a Tree class that implements a binary tree.

class Tree
  ...
end

A binary tree is just one of many forms of collections, such as Arrays, 
Hashes, Stacks, Sets, and more. All of these collection classes include 
the Enumerable module, which means they have access to an each method, 
as well as many other iterative methods such as map, reduce, select, 
and more.

For this exercise, modify the Tree class to support the methods of 
Enumerable. You do not have to actually implement any methods -- just 
show the methods that you must provide.
	
=end

class Tree
  include Enumerable

  def each
    # implementation which yields successive members
    # of the collection - i.e. binary tree
  end
end



=begin
	Problem
		- What is a binary tree?
		- How do I include the Enumerable module?
			- include Enumerable (mixin this behavior)
			- define an Tree#each method so the Enumerable mixin will work 
		- How will I implement the each method?
			- define a instance method called each()
				- it then needs yield successive members of the collection
	Examples
	
	include Enumerable

	def each
		# implementation which yields successive members
		# of the collection - i.e. binary tree
	end

	Data-structures
	Algorithm
	Code
=end