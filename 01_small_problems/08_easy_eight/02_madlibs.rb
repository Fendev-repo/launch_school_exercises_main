=begin
  Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

  Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

  Example

  Enter a noun: dog
  Enter a verb: walk
  Enter an adjective: blue
  Enter an adverb: quickly

  Do you walk your blue dog quickly? That's hilarious!
=end

def prompt(str)
  puts "#{str}"
end

def collect_inputs
  prompt "Enter a noun:"
  noun = gets.chomp.downcase

  prompt "Enter a verb:"
  verb = gets.chomp.downcase

  prompt "Enter a adjective:"
  adjective = gets.chomp.downcase
  
  prompt "Enter a adverb:"
  adverb = gets.chomp.downcase

  { 
  noun: noun,
  verb: verb,
  adjective: adjective,
  adverb: adverb
  }
end

def madlibs
  hsh = collect_inputs
  prompt "Do you #{hsh[:verb]} your #{hsh[:adjective]} #{hsh[:noun]}"
  prompt "#{hsh[:adverb]}? Thats hilarious!"
end

madlibs
