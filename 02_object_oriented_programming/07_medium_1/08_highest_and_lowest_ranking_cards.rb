require 'pry-byebug'

class Card
  attr_reader :rank_value, :suit, :card_picture

  def initialize(rank_value, suit)
    @card_picture = rank_value
    @rank_value = rank_system(rank_value)
    @suit = suit
  end

  def to_s
     "#{self.rank_value} of #{self.suit}"
  end

  def ==(other_card)
    self.rank_value == other_card.rank_value
  end

  def rank
    self.card_picture
  end

  protected

  def <=>(other_card)
    self.rank_value <=> other_card.rank_value
  end

  private

  def rank_system(rank_value)
    return rank_value if rank_value.to_s.match?(/^([23456789]|10)$/)
    
    new_rank = case rank_value.downcase
               when 'jack' then 11
               when 'queen' then 12
               when 'king' then 13
               when 'ace' then 14
    end
  end
end

cards = [Card.new(2, 'Hearts'),
         Card.new(10, 'Diamonds'),
         Card.new('Ace', 'Clubs')]
puts cards
puts cards.min == Card.new(2, 'Hearts')
puts cards.max == Card.new('Ace', 'Clubs')

cards = [Card.new(5, 'Hearts')]
puts cards.min == Card.new(5, 'Hearts')
puts cards.max == Card.new(5, 'Hearts')

cards = [Card.new(4, 'Hearts'),
         Card.new(4, 'Diamonds'),
         Card.new(10, 'Clubs')]
puts cards.min.rank == 4
puts cards.max == Card.new(10, 'Clubs')

cards = [Card.new(7, 'Diamonds'),
         Card.new('Jack', 'Diamonds'),
         Card.new('Jack', 'Spades')]
puts cards.min == Card.new(7, 'Diamonds')
puts cards.max.rank == 'Jack'

cards = [Card.new(8, 'Diamonds'),
         Card.new(8, 'Clubs'),
         Card.new(8, 'Spades')]
puts cards.min.rank == 8
puts cards.max.rank == 8