=begin
  Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

  Example:
=end

def fizzbuzz(num1, num2)
  ordered_range = num1 > num2 ? (num2..num1) : (num1..num2)
  new_ary = []

  ordered_range.each do |num|
    if num % 3 == 0 && num % 5 == 0
      new_ary << "FizzBuzz"
    elsif num % 3 == 0
      new_ary << "Fizz"
    elsif num % 5 == 0
      new_ary << "Buzz"
    else
      new_ary << "#{num}"
    end      
  end
  puts new_ary.join(", ")
end


fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz