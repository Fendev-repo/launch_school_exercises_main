=begin
  Build a program that displays when the user will retire and how many years she has to work till retirement.


  What is your age? 30
  At what age would you like to retire? 70

  It's 2016. You will retire in 2056.
  You have only 40 years of work to go!
=end

def calculate_retirement_age
  puts "What is your age?"
  age = gets.chomp.to_i
  puts "At what age would you like to retire?"
  desired_age_of_retirement = gets.chomp.to_i

  # Create a time object to then dymamically reference the time below.
  time_now = Time.now

  years_still_to_work = (desired_age_of_retirement - age)
  date_of_retirement = time_now.year + years_still_to_work  

  puts "Its #{time_now.year}. You will retire in #{date_of_retirement}"
  puts "You have only #{years_still_to_work} years of work to go!"
end

calculate_retirement_age