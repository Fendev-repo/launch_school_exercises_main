=begin
  Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.
  
  Example:
  What is the bill? 200
  What is the tip percentage? 15

  The tip is $30.0
  The total is $230.0

  Further Exploration
  Our solution prints the results as $30.0 and $230.0 instead of the more usual $30.00 and $230.00. Modify your solution so it always prints the results with 2 decimal places.

  Hint: You will likely need Kernel#format for this.
=end

def tip_calculator
  puts 'What is the bill?'
  bill = gets.chomp.to_f

  puts 'What is the tip percentage?'
  tip_rate = gets.chomp.to_f

  tip = (tip_rate / 100) * bill
  total = bill + tip

  
  formatted_tip = sprintf("%#.f00", tip)
  formatted_total = sprintf("%#.f00", total)
  
  puts "The tip is #{formatted_tip}"
  puts "The total is #{formatted_total}"
end


tip_calculator