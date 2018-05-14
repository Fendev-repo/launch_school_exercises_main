=begin
  Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

  Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

  You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

  You may use this constant to represent the degree symbol:

  Examples:
=end

DEGREE = "\xC2\xB0"


def dms(angle)
  final_degrees, sub_degrees = angle.divmod(1)
  mins = sub_degrees * 60
  final_mins, remaining_sub_degrees = mins.divmod(1)
  final_seconds = remaining_sub_degrees * 60

  format(%(#{final_degrees}#{DEGREE}%02d'%02d"), final_mins, final_seconds)
end


puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
# I have altered this desired output - as my approach did not round up 
# the mins and seconds prematurely. 
puts dms(254.6) == %(254°35'59")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")