=begin
  Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

  Note: 1 square meter == 10.7639 square feet

  Do not worry about validating the input at this time.

  Example Run
  Enter the length of the room in meters:
  10
  Enter the width of the room in meters:
  7
  The area of the room is 70.0 square meters (753.47 square feet).

  Further Exploration
  Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.
=end


NUM_FEET_IN_METERS = 3.28084
INC_PER_FT = 12 
CM_PER_FT = 30.48


# Answer: 

def room_area
  puts "Enter the length of the room in meters:"
  length = gets.chomp.to_f
  puts "Enter the width of the room in meters:"
  width = gets.chomp.to_f

  length_in_feet = length * NUM_FEET_IN_METERS
  width_in_feet = width * NUM_FEET_IN_METERS
  area_in_feet = length_in_feet * width_in_feet

  puts "The area of the room is #{(length * width).to_f} square meters (#{(area_in_feet).round(2)} square feet)."
end


# Further Exploration Answer

def room_area

  puts "Enter the length of the room in feet:"
  length = gets.chomp.to_f
  puts "Enter the width of the room in feet:"
  width = gets.chomp.to_f

  square_feet   = length * width 
  square_inches = (length * INC_PER_FT) * (width * INC_PER_FT)
  square_cm     = (length * CM_PER_FT) * (width * CM_PER_FT)

  puts "The area of the room is #{square_feet} square feet." 
  puts "the area of the room is #{square_inches.round(2)} square inches"
  puts "the area of the room is #{square_cm.round(2)} square inches"
end


room_area









