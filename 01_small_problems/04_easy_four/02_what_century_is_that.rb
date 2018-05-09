require 'pry-byebug'
=begin
  Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

  New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

  Examples:
=end

CENTURY = 100

def century(year)
  num_cent_float = year.to_f / CENTURY
  num_cent_int = year / CENTURY
  num_cent_int += 1 unless num_cent_float == num_cent_int

  allocate_correct_extension(num_cent_int)
end

def allocate_correct_extension(num_cent_int)
  last_digit = num_cent_int.digits.reverse.last
  last_two_digits = num_cent_int.digits.reverse.last(2).join.to_i

  if [11, 12, 13].include?(last_two_digits)
    return "#{num_cent_int}th"
  end

  if last_digit == 2
    num_cent_int.to_s + 'nd'
  elsif last_digit == 1
    num_cent_int.to_s + 'st'
  elsif last_digit == 3
    num_cent_int.to_s + 'rd'
  else
    num_cent_int.to_s + 'th'  
  end
end 



puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
