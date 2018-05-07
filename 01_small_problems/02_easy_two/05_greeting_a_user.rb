=begin
  Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

Examples

  What is your name? Bob
  Hello Bob.

  What is your name? Bob!
  HELLO BOB. WHY ARE WE SCREAMING?
=end


def greet_user_appropiately
  puts "What is your name?"
  name_of_user = gets.chomp

  if name_of_user.include?('!')
    puts "HELLO #{name_of_user.upcase.chop}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name_of_user}"
  end
end

greet_user_appropiately