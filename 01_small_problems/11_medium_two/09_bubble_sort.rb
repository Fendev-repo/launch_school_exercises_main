=begin
  Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.
=end


def bubble_sort!(ary)
  
  loop do 
    current_iteration = ary.dup

    ary.length.times do |i|
      break if i == ary.length - 1
      if ary[i] > ary[i + 1]
        ary[i], ary[i + 1] = ary[i + 1], ary[i]
      end  
    end
    break if current_iteration == ary
  end
  ary
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]

bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

     