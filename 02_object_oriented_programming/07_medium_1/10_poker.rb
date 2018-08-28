require_relative '09_deck_of_cards'


class PokerHand
  HAND_SIZE = 5

  attr_reader :hand

  def initialize(deck)
    @deck = deck.shuffle
    @hand = deal_hand
  end

  def print
    hand.each { |card| puts card }
  end

  def evaluate

    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def deal_hand
    new_ary = []
    HAND_SIZE.times do |_|
      new_ary << @deck.pop
    end
    new_ary
  end

  def current_hand_rank_values
    hand.map { |card| card.rank_value }.sort
  end

  def current_hand_suite_are_all_the_same?
    hand.map { |card| card.suit }.uniq.length == 1
  end

  def current_hand_has_sequential_values?
    new_ary = current_hand_rank_values
    first_item = new_ary.first
    test_ary = []

    first_item.upto(new_ary.length + first_item - 1) do |num|
      test_ary << num
    end
    new_ary == test_ary
  end

  def current_hand_same_card_value(num)
    values = current_hand_rank_values
    new_ary = values.select do |card_val|
      values.count(card_val) == num
    end
    new_ary.length == num
  end

  def royal_flush?
    current_hand_rank_values == [10, 11, 12, 13, 14] &&
    current_hand_suite_are_all_the_same?
  end

  def straight_flush?
    current_hand_has_sequential_values? &&
    current_hand_suite_are_all_the_same?
  end

  def four_of_a_kind?
    current_hand_same_card_value(4)
  end

  def full_house?
    current_hand_rank_values.uniq.length == 2
  end

  def flush?
    current_hand_suite_are_all_the_same?
  end

  def straight?
    current_hand_has_sequential_values?
  end

  def three_of_a_kind?
    current_hand_same_card_value(3)
  end

  def two_pair?
    current_hand_rank_values.uniq.length == 2 ||
    current_hand_rank_values.uniq.length == 3
  end

  def pair?
    current_hand_same_card_value(2)
  end
end

hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'
