=begin
  Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

  Examples:
=end

def sum_square_difference(int)
  square_of_sum = (1..int).inject(&:+) ** 2
  sum_of_square = (1..int).map do |num|
    num ** 2
  end
  square_of_sum - sum_of_square.sum  
end

puts sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150