require 'pry-byebug'
=begin
  Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

  Examples:

  >> Please enter an integer greater than 0:
  5
  >> Enter 's' to compute the sum, 'p' to compute the product.
  s
  The sum of the integers between 1 and 5 is 15.


  >> Please enter an integer greater than 0:
  6
  >> Enter 's' to compute the sum, 'p' to compute the product.
  p
  The product of the integers between 1 and 6 is 720.
=end


def calculate_sum(num)
  puts (1..num).each.inject(:+)
end

def calculate_product(num)
  puts (1..num).each.inject(:*)
end

puts "Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
calculation_type = gets.chomp.downcase

if calculation_type == 's'
  calculate_sum(number)
else
  calculate_product(number)
end
