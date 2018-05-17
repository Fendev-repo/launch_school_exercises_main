=begin 
  Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

  Numerical Score Letter  Grade
    90 <= score <= 100  'A'
    80 <= score < 90  'B'
    70 <= score < 80  'C'
    60 <= score < 70  'D'
    0 <= score < 60 'F'
  Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

  Example:
=end

def score_matrix
  { 
    (90..100) => 'A', (80..90) => 'B',
    (70..80) => 'C', (60..70) => 'D',
    (0..60) => 'F'
  }
end

def get_grade(num1, num2, num3)
  mean = calc_mean([num1, num2, num3])
  score_matrix.select { |range| range === mean }.values.join
end

def calc_mean(args)
  args.sum / args.length
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"