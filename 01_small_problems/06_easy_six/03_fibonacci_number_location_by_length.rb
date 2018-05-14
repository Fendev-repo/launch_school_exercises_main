=begin
  The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

  Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

  Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

  Examples:
  You may assume that the argument is always greater than or equal to 2.
=end

# Option A:
def find_fibonacci_index_by_length(int)
  counter = 1
  last_fib_number_length = 0

  until last_fib_number_length == int  
    fib_array = fibonacci(counter)
    last_fib_number_length = fib_array.last.digits.length
    counter += 1
  end
  fib_array.index(fib_array.last)
end 

def fibonacci(num)
  (1..num).inject([0,1]) do |fib| 
    fib << fib.last(2).inject(:+)
  end
end


# Option B:
def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  indx = 2

  loop do 
    indx += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  indx
end

puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847