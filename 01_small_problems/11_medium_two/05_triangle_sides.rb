=begin
  A triangle is classified as follows:

  equilateral All 3 sides are of equal length
  isosceles 2 sides are of equal length, while the 3rd is different
  scalene All 3 sides are of different length
  To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

  Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

  Examples:
=end





def triangle(num1, num2, num3)
  nums = [num1, num2, num3].sort

  return :invalid if nums.any? { |num| num == 0 }
  return :invalid unless nums.slice(0, 2).sum > nums.last 

  first_item = nums.shift
  if nums.all? { |num| num == first_item && num >= 1 }
    :equilateral
  elsif nums.count(nums[1]) == 2
    :isosceles
  else
    :scalene
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid