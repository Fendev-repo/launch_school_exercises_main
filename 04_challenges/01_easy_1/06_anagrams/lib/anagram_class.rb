# A class that, given a word and a list of possible anagrams,
# selects the correct sublist that contains the anagrams of the word.
class Anagram
  def initialize(given_word)
    @given_word = given_word
  end

  def match(possible_anagrams)
    possible_anagrams.each_with_object([]) do |word, rtn_ary|
      next if word.length != @given_word.length
      next if word.downcase == @given_word.downcase

      if @given_word.downcase.chars.sort.eql?(word.downcase.chars.sort)
        rtn_ary << word
      end
    end
  end
end
