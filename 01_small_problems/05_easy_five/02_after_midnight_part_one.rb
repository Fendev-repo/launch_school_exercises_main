require 'pry-byebug'
=begin
  The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

  Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

  You may not use ruby's Date and Time classes.

  Examples:

  Further Exploration
  How would you approach this problem if you were allowed to use ruby's Date and Time classes? Suppose you also needed to consider the day of week? (Assume that delta_minutes is the number of minutes before or after midnight between Saturday and Sunday; in such a method, a delta_minutes value of -4231 would need to produce a return value of Thursday 01:29.)
=end

HOURS_PER_DAY = 24
MINS_PER_HOUR = 60
MINS_PER_DAY = HOURS_PER_DAY * MINS_PER_HOUR

def time_of_day(mins)
  time_minus_excess = mins % MINS_PER_DAY
  mins = time_minus_excess % MINS_PER_HOUR
  hours = time_minus_excess / MINS_PER_HOUR
  format('%02d:%02d', hours, mins)
end



puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"


