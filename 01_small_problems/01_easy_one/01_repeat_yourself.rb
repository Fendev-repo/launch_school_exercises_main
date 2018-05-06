# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

def print_integer(int, str)
  int.times { print str }
end


print_integer(8, "Hello there")