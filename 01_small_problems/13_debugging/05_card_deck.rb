=begin
  We started working on a card game but got stuck. Check out why the code below raises a TypeError.

  Once you get the program to run and produce a sum, you might notice that  the sum is off: It's lower than it should be. Why is that? 
=end

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.dup,
         :diamonds => cards.dup,
         :clubs    => cards.dup,
         :spades   => cards.dup }


def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck
def determine_score(deck)
  total = 0
  deck.each do |suit|
    suit[1].each do |card|
      total += score(card)
    end
  end
  total
end

determine_score(deck)

puts "A total untouched deck is 380"
puts "The players hand is #{player_cards.inspect}"
puts "The score for the remaining deck is #{determine_score(deck)}"
