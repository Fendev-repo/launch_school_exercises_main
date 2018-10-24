=begin
Write a program that prints out the numbers from 1 to
100, but for multiples of three print "Fizz" instead of
the number and for the multiples of five print "Buzz".
For numbers which are multiples of both three and five
print "FizzBuzz"
=end

def fizzbuzz
  (1..100).each do |num|
    if (num % 3).zero? && (num % 5).zero?
      puts 'FizzBuzz'
    elsif (num % 3).zero?
      puts 'Fizz'
    elsif (num % 5).zero?
      puts 'Buzz'
    else
      puts num
    end
  end
end

fizzbuzz

=begin
  Problem
    - How will I print out the number 1-100?
      - lets use a range (1..100)
      - lets then use the Range#each method to
        iterate over each number
    - How will I isolate numbers that are both
      multiples of 3 and 5?
      - I will check each number in the following
        sequence.
        First - is the current iteration number
        divisable by both 3 and 5 with no remainders?
        current_num % 3 == 0 && current_num % 5 == 0
        If this statement returns true then print
        "FizzBuzz"
        Then check for 3
        then check for 5
        else
        print number

  Examples
  Data-structures
  Algorithm
    Create range 1-100
    iterate over each number
    check if number if evenly divisable by 3 & 5
    check if number if evenly divisable by 3
    check if number if evenly divisable by 5
   If not then return number
  Code
=end
