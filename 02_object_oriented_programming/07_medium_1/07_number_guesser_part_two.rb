require 'pry-byebug'

class GuessingGame

  def initialize
    @rand_num = nil 
    @guesses = []
    @range = nil
    @number_of_guesses = nil
  end

  def play
    loop do
      
      confirm_range_values

      calculate_rand_num

      calculate_num_guesses

      advise_number_of_guesses_left

      collect_guess

      update_status

      break if no_more_guesses_left
      break if guessed_correct_num
    end
  end

  private

  attr_accessor :number_of_guesses, :guesses, :range, :rand_num

  def calculate_rand_num
    return unless rand_num.nil? 
    self.rand_num = rand(range)
  end

  def calculate_num_guesses
    return unless number_of_guesses.nil?
    self.number_of_guesses = Math.log2(range.size).to_i + 1
  end

  def confirm_range_values
    return unless range.nil?
    puts "What is the range - please enter 'number - another number'"
    reply = nil
    loop do
      reply = gets.chomp
      break if reply.match?(/^\d+[-]\d+$/)
      print_to_cli 'Incorrect input.  Enter number then dash then another number' 
    end
    set_range(reply)
  end

  def set_range(reply)
    num1, num2 = reply.split('-')
    sorted = [num1.to_i, num2.to_i].sort
    self.range = (sorted[0]..sorted[1])
  end

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
    guesses.length >= number_of_guesses
  end

  def guesses_left
    number_of_guesses - guesses.length
  end

  def guessed_correct_num
    guesses.last == rand_num
  end

  def advise_number_of_guesses_left
    print_to_cli "You have #{guesses_left} guesses remaining."
  end

  def collect_guess
    print_to_cli "Enter a number between #{range}"
    reply = nil
    loop do
      reply = gets.chomp
      break if reply.match?(/^\d{1,}$/) && reply != '0'
      print_to_cli "Invalid guess. Enter a number between #{range}"
    end
    guesses << reply.to_i
  end

  def print_to_cli(msg)
    puts msg.to_s
  end
end

game = GuessingGame.new
game.play