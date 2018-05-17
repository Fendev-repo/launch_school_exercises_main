=begin
  Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

  You may assume that the argument will always be a valid integer that is greater than 0.

  Examples:
=end

def sequence(num)
  num.times.map { |num| num + 1 }
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]