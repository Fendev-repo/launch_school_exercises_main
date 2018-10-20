=begin
Passing Parameters Part 1

Modify the method below so that the display/output 
of items is moved to a block, and its implementation 
is left up to the user of the gather method.

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  puts "#{items.join(', ')}"
  puts "Let's start gathering food."
end
=end

def gather(collection)
  yield collection if block_given?
end

# Examples
items = ['apples', 'corn', 'cabbage', 'wheat']

gather(items) do 
  puts "Let's start gathering food."
  puts "#{items.join(', ')}"
  puts "Let's start gathering food."
end


=begin
  Problem
    - How will I move the display output of item
      to a block?
      - I will yield the collection items arg
        to the block
  Data-structures
  Algorithm
  Code
=end