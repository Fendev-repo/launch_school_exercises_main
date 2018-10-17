require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

=begin
Write a minitest assertion that will fail if the 
value.odd? is not true.
=end

=begin
  S - setup the necessary objects
  E - execute the code agaist the object being tested
  A - assert the results of the execution
  T - Tear down and clean up any lingering artifacts
=end

class TestOdd < Minitest::Test  
  
  def setup
    @value = 1
  end

  def test_integer_is_odd
    assert(@value.odd?, 'value is not odd')
  end

  def test_integer_is_odd_option_two
    assert_equal(true, @value.odd?)
  end
end
