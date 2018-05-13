=begin 
  Write a method that will take a short line of text, and print it within a box.
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
=end


def print_in_box(string)
  length_of_box = string.length + 10

  puts "+#{'-' * length_of_box}+"
  puts "|#{' ' * length_of_box}|"
  puts "|#{' ' * length_of_box}|"
  puts "|   #{string}       |"
  puts "|#{' ' * length_of_box}|"
  puts "|#{' ' * length_of_box}|"
  puts "+#{'-' * length_of_box}+"
end

print_in_box('To boldly go where no one has gone before.')