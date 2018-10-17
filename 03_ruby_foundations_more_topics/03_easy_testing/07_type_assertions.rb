require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

=begin
Write a minitest assertion that will fail if value is not an instance of 
the Numeric class exactly. 
value may not be an instance of one of Numeric's superclasses.
=end

class TestValueIsACertainClass < Minitest::Test

  def setup
    @value = Numeric.new(1)
  end

  def test_that_value_is_of_a_specific_class
    assert_instance_of(Numeric, @value)
  end
end