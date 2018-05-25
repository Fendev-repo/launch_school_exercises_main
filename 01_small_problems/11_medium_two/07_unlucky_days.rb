require 'date'
=begin
  Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

  Examples:
=end


def friday_13th(year)
  # Select a time range
  start_date = Date.new(year)
  end_date = Date.new(year + 1)
  # Count the number of Friday(s) that are also '13ths' in that range
  all_friday_13ths = (start_date..end_date).select do |date| 
    date.friday? && date.day == 13 
  end
  all_friday_13ths.count
end   

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2