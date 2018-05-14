=begin
  Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

  Examples:
=end

def triangle(num)
  counter = 1 
  num.times do |n|
    puts "#{'*' * counter }".rjust(num)
    counter += 1
  end
end

triangle(5)
triangle(9)

=begin 
triangle(5)


    *
   **
  ***
 ****
*****


triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
=end