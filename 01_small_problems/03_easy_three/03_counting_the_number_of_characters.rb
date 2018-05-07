=begin
  Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

  Input:
    Please write word or multiple words: walk

  Output:
    There are 4 characters in "walk".

  Input: 
    Please write word or multiple words: walk, don't run

  Output: 
    There are 13 characters in "walk, don't run".      
=end

def number_of_non_space_characters_in_word
  puts "Please write word or multiple words:"
  reply = gets.chomp
  num = reply.split.join.chars.count

  puts "There are #{num} characters in \"#{reply}\"" 
end

number_of_non_space_characters_in_word