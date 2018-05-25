=begin
  Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.
=end

def find_longest_sentence(file_name_as_str)
  text = File.read(file_name_as_str)
  array = text.split(/\.|\?|!/).max_by(&:length)
  "The longest sentence has #{array.split(' ').count} words"
end


puts find_longest_sentence("example_text.txt")