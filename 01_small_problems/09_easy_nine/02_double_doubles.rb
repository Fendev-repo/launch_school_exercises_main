=begin
  A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

  Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

  examples: 
=end

def twice(num)
  double_num?(num) ? num : num * 2
end

def double_num?(num)
  # Checks if num length is odd
  if num.digits.length.odd?
    return false
  end
  # Checks if left side is the same as the right.
  left, right = num.digits.each_slice(num.digits.length / 2).to_a
  left == right
end


puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10



