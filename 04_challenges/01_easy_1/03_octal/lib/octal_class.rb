# Implement octal to decimal conversion.
# Given an octal input string, your program should produce a decimal output.
class Octal
  OCTAL = 8

  def initialize(octal_str)
    @octal_str_arg = octal_str
    @octal_int_array = octal_str.chars.map(&:to_i)
  end

  def invalid_input?
    return true if  @octal_int_array.length < 2 &&
                    @octal_int_array.sum > 7
    return true if  @octal_int_array.any? { |num| num > 7 }
    return true if  @octal_str_arg.chars.any? do |element|
                      element.match?(/[a-z]/)
                    end
  end

  def to_decimal
    return 0 if invalid_input?

    octal_num = []

    @octal_int_array.reverse.each_with_index do |num, exponent|
      octal_num << (num * (OCTAL**exponent))
    end

    octal_num.sum
  end
end
