require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

=begin
Write a minitest assertion that will fail if the class of value is 
not Numeric or one of Numeric's subclasses (e.g., Integer, Fixnum, 
Float, etc).
=end

class MakeSureValueIsAKindOf < Minitest::Test

  def setup
    @value = 1.0
  end

  def test_that_value_is_kind_of_class
    assert_kind_of(Numeric, @value)
  end
end