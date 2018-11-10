# The Luhn formula
class Luhn
  def initialize(num_arg)
    @num_arg = num_arg
    create_num_array
  end

  def create_num_array
    @num_ary = @num_arg.to_s.chars.map(&:to_i)
  end

  def create_luhn_product_array
    rtn_ary = []

    @num_ary.reverse.each_with_index do |num, idx|
      rtn_ary << num if idx.even?
      next if idx.even?

      doubled_num = num * 2
      doubled_num >= 10 ? rtn_ary << (doubled_num - 9) : rtn_ary << doubled_num
    end
    rtn_ary.reverse
  end

  def addends
    create_luhn_product_array
  end

  def checksum
    create_luhn_product_array.sum
  end

  def valid?
    (create_luhn_product_array.sum % 10).zero?
  end

  def append_to_num_array(num = 0)
    @num_ary << num
  end

  def pop_last_element_off_num_array
    @num_ary.pop
  end

  def self.create(num_arg)
    num = Luhn.new(num_arg)
    num.append_to_num_array
    new_ary = num.create_luhn_product_array
    new_ary.pop
    checksum = (new_ary.sum % 10).zero? ? 0 : 10 - (new_ary.sum % 10)
    (num_arg.to_s << checksum.to_s).to_i
  end
end
