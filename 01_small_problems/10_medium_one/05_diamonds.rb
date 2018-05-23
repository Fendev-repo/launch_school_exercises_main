=begin 
  Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

  Further Exploration
  Try modifying your solution or our solution so it prints only the outline of the diamond:
=end

def four_pointed_diamond(num)
  1.upto(num) do |i|
    if i.odd?
      puts "#{'*' * i}".center(20)
    end
  end
  (num - 1).downto(0) do |i|
    if i.odd? 
      puts "#{'*' * i}".center(20)
    end
  end
end


four_pointed_diamond(9)
