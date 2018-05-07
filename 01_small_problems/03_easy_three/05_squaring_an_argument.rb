require_relative '04_multiplying_two_numbers'
=begin
  Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

  Example:

  square(5) == 25
  square(-8) == 64

  Further Exploration
    What if we wanted generalize this method to a "power to the n" type method: cubed, to the 4th power, to the 5th, etc. How would we go about doing so while still using the multiply method?
=end

def square(num)
  multiply(num, num)
end

# puts square(5) == 25
# puts square(-8) == 64


# Further Exploration Answer

def power_to_the_n(num, power)
  num ** power
end

puts power_to_the_n(5, 3)