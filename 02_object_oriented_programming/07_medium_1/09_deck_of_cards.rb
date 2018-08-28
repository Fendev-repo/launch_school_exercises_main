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

class Deck
  attr_reader :deck

  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    @deck = deal_deck
  end

  def shuffle
    self.deck.shuffle!
  end

  def draw
    if @deck.empty?
      @deck = deal_deck
    end
    @deck.pop
  end

  private

  def deal_deck
    new_ary = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        new_ary << Card.new(rank, suit)
      end
    end
    new_ary
  end
end

# deck = Deck.new
# drawn = []
# 52.times { drawn << deck.draw }
# puts drawn.count { |card| card.rank == 5 } == 4
# puts drawn.count { |card| card.suit == 'Hearts' } == 13

# drawn2 = []
# 52.times { drawn2 << deck.draw }
# puts drawn != drawn2 # Almost always.
