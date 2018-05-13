require 'pry-byebug' 
=begin
  Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

  Words consist of any string of characters that do not include a space.

  Examples 
=end

# Option A:
def word_sizes(str)
  ary = str.split
  # Create array of word lengths
  num_array = ary.map do |word|
    word.length
  end
  rtn_hsh = ary.each_with_object({}) do |word, hsh|
    hsh[word.length] = num_array.count(word.length)
  end
  rtn_hsh
end


# Option B:
def word_sizes(str)
  hsh = Hash.new(0)
  ary = str.split
  ary.each do |word|
    hsh[word.length] += 1
  end
  hsh
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}