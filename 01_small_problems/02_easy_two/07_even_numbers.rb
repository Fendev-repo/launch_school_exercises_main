=begin
  Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.
=end

def print_even_numbers(range)
  range.each { |n| puts n if n.even? }
end

print_even_numbers(1..99)