# A class that given a number, can find the sum of all
# the multiples of particular numbers up to but not including
# that number.
class SumOfMultiples
  def initialize(*multipliers)
    @mult_ary = multipliers.nil? ? [3, 5] : multipliers
  end

  def self.to(number)
    SumOfMultiples.new(3, 5).to(number)
  end

  def to(number)
    return_ary = []

    @mult_ary.each do |mult|
      (1..(number - 1)).each do |nat_num|
        calc = nat_num * mult
        return_ary << calc if calc < number
      end
    end
    return_ary.uniq.sum
  end
end
