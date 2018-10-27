# A class that given a phrase can count the occurrences
# of each word in that phrase
class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    count_hsh = Hash.new(0)

    @phrase.scan(/\b[\w']+\b/) do |match|
      count_hsh[match.downcase] += 1
    end
    count_hsh
  end
end
