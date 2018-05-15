require 'pry-byebug'

=begin
  Write a method that returns the next to last word in the String passed to it as an argument.

  Words are any sequence of non-blank characters.

  You may assume that the input String will always contain at least two words.

  Examples:
=end

# Option A:
def penultimate(str)
  str.split[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'


# Further Exploration Option

=begin 
Further Exploration
Our solution ignored a couple of edge cases because we explicitly stated that you didn't have to handle them: strings that contain just one word, and strings that contain no words.

Suppose we need a method that retrieves the middle word of a phrase/sentence. What edge cases need to be considered? How would you handle those edge cases without ignoring them? Write a method that returns the middle word of a phrase or sentence. It should handle all of the edge cases you thought of.
=end


def penultimate(str)
  ary = str.split
  # binding.pry
  if ary.length <= 1
    ary[0]
  elsif ary.length.odd?
    ary[ary.length / 2]
  else
    ary[ary.length / 2 - 1]
  end 
end

puts penultimate('last') == 'last'
puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'School'
puts penultimate('Launch School is another great!') == 'is'

