class Fixnum
  ONES = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
  TENS = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
  HUNDREDS = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
  THOUSANDS = ["", "M", "MM", "MMM"]

  def to_roman
    thousands = self / 1000
    hundreds = self % 1000 / 100
    tens = self % 100 / 10
    ones = self % 10

    "#{THOUSANDS[thousands]}#{HUNDREDS[hundreds]}#{TENS[tens]}#{ONES[ones]}"
  end
end