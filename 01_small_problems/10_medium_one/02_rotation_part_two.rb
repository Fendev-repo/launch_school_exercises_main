=begin
  Write a method that can rotate the last n digits of a number. For example:
=end

def rotate_array(ary)
  new_ary = ary.dup
  first_item = new_ary.shift
  new_ary.push(first_item)
  new_ary
end
# Option A:
def rotate_rightmost_digits(num, n_last_digits)
  return num if n_last_digits <= 1
  ary_of_digits = num.digits.reverse
  sub_ary_for_rotation = ary_of_digits.slice!(-n_last_digits..-1)
  result = ary_of_digits << rotate_array(sub_ary_for_rotation)
  result.flatten.join.to_i
end
# Option B:
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end


puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917