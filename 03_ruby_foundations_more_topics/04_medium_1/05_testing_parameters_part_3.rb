=begin
Passing Parameters Part 3

Given this code:

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end
Fill out the following method calls for gather so 
that they produce the corresponding output shown in numbers 1-4 
listed below:

1)

gather(items) do | , |
  puts
  puts
end
Let's start gathering food.
apples, corn, cabbage
wheat
We've finished gathering!
2)

gather(items) do | , , |
  puts
  puts
  puts
end
Let's start gathering food.
apples
corn, cabbage
wheat
We've finished gathering!
3)

gather(items) do | , |
  puts
  puts
end
Let's start gathering food.
apples
corn, cabbage, wheat
We've finished gathering!
4)

gather(items) do | , , , |
  puts
end
Let's start gathering food.
apples, corn, cabbage, and wheat
We've finished gathering!
=end

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# 1)
gather(items) do |arg1, arg2, arg3, arg4|
  puts "#{arg1}, #{arg2}, #{arg3}"
  puts "#{arg4}"
end

# 2)
gather(items) do |arg1, arg2, arg3, arg4|
  puts "#{arg1}" 
  puts "#{arg2}, #{arg3}"
  puts "#{arg4}"
end

# 3)
gather(items) do |arg1, arg2, arg3, arg4|
  puts "#{arg1}" 
  puts "#{arg2}, #{arg3}, #{arg4}"
end

# 4)
gather(items) do |arg1, arg2, arg3, arg4|
  puts "#{arg1} #{arg2}, #{arg3}, #{arg4}"
end











