=begin
  Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

  Further Exploration
  Repeat this exercise with a technique different from the one you just used, and different from the solution shown above. You may want to explore the use Integer#upto or Array#select methods, or maybe use Integer#odd?
=end

def print_odd_numbers(range)
  range.each { |n| puts n if n.odd? }
end

print_odd_numbers(1..99)

# Further Exploration answer

def print_odd_numbers(num1, num2)
  num1.upto(num2) { |n| puts n if n.odd? }
end

print_odd_numbers(1, 99)