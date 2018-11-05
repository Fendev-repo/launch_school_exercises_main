# Class that will take a decimal number, and convert it to the
# appropriate sequence of events for a secret handshake.
class SecretHandshake
  def initialize(number)
    @number = number
    @bin_number = number.to_i.to_s(2).to_i
  end

  def handshake_bin_values
    {
      10_000  => { hand_shake: 'reverse', qty: nil },
      1_000   => { hand_shake: 'jump', qty: nil },
      100     => { hand_shake: 'close your eyes', qty: nil },
      10      => { hand_shake: 'double blink', qty: nil },
      1       => { hand_shake: 'wink', qty: nil }
    }
  end

  def count_handshake_items
    @handshake_hsh = handshake_bin_values

    @handshake_hsh.each_key do |key|
      next unless key <= @bin_number

      @handshake_hsh[key][:qty] = @bin_number.divmod(key).first
      @bin_number               = @bin_number.divmod(key).last
    end
    @handshake_hsh.sort
  end

  def commands
    rtn_ary = count_handshake_items.each_with_object([]) do |h_shake, ary|
      next if h_shake[0] == 10_000

      ary << h_shake[1][:hand_shake] unless h_shake[1][:qty].nil?
    end

    @handshake_hsh[10_000][:qty].nil? ? rtn_ary : rtn_ary.reverse!
  end
end
