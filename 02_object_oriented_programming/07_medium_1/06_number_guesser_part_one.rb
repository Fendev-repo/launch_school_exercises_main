require 'pry-byebug'
=begin 
Problem Decomposition
  - Statement
    - An object-oriented number guessing class for numbers 
      in the range 1 to 100, with a limit of 7 guesses per game.
  - Sub-problems
    - How will I generate random number between 1-100
      rand(1...100)  
    - How will I confirm if the guessed number is to low/high?
    guess < number_to_guess ? to_low : to_high
=end

class GuessingGame
  NUM_OF_GUESSES = 7
  RAND_RANGE = (1..100)

  def initialize
    @rand_num = rand(RAND_RANGE)
    @guesses = []
  end

  def play
    loop do
      advise_number_of_guesses_left

      collect_guess

      update_status

      break if no_more_guesses_left
      break if guessed_correct_num
    end
  end

  private

  attr_accessor :number_of_guesses, :guesses
  attr_reader :rand_num

  def update_status
    if guesses.last == rand_num
      print_to_cli 'You win!'
    elsif guesses.last > rand_num
      print_to_cli 'Your guess is too high'
    else
      print_to_cli 'Your guess is too low'
    end
  end

  def no_more_guesses_left
    guesses.length >= NUM_OF_GUESSES
  end

  def guesses_left
    NUM_OF_GUESSES - guesses.length
  end

  def guessed_correct_num
    guesses.last == rand_num
  end

  def advise_number_of_guesses_left
    print_to_cli "You have #{guesses_left} guesses remaining."
  end

  def collect_guess
    print_to_cli 'Enter a number between 1 and 100:'
    reply = nil
    loop do
      reply = gets.chomp
      break if reply.match?(/^\d{1,3}$/) && reply != '0'
      print_to_cli 'Invalid guess. Enter a number between 1 and 100'
    end
    guesses << reply.to_i
  end

  def print_to_cli(msg)
    puts msg.to_s
  end
end

game = GuessingGame.new
game.play
