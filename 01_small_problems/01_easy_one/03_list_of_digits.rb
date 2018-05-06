# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

def digit_list(num)
  str = num.to_s
  updated_str = str.split('')
  updated_str.map(&:to_i)
end

p digit_list(2455) 
# => [2, 4, 5, 5]



