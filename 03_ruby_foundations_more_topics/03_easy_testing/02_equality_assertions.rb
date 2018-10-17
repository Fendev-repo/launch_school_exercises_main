require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

=begin
Equality Assertions

Write a minitest assertion that will 
fail if value.downcase does not return 'xyz'.
=end

class TestDownCase < Minitest::Test
  def setup
    @string = 'XYZ'
  end

  def test_it_will_downcase
    assert_equal('xyz', @string.downcase)
  end
end

