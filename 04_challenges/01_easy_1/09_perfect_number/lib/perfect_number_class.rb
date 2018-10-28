# Class calculates if number argument is a perfect,
# abundant or deficient number
class PerfectNumber
  def self.total_all_divisors(num_arg)
    (1..(num_arg - 1)).select { |nat_num| (num_arg % nat_num).zero? }.sum
  end

  def self.classify(num_arg)
    raise RuntimeError unless num_arg.is_a? Integer
    raise RuntimeError unless num_arg > 0

    sum = total_all_divisors(num_arg)

    if sum == num_arg
      'perfect'
    elsif sum > num_arg
      'abundant'
    else
      'deficient'
    end
  end
end
