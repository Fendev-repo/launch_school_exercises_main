# A class that will convert a trinary number, represented as a string
class Trinary
  TRINARY = 3 

  def initialize(trinary_str)
    @trinary_str = trinary_str
    @trinary_int_array = trinary_str.chars.reverse.map(&:to_i)
  end

  def valid_trinary?
    @trinary_str.match?(/[^012]/)
  end

  def to_decimal
    return 0 if valid_trinary?
    decimals = []

    @trinary_int_array.each_with_index do |number, exponent|
       decimals << (number * (TRINARY ** exponent))
    end
    decimals.sum
  end
end