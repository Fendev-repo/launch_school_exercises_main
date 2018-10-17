require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

=begin
Write a minitest assertion that will fail if value is not nil. 
=end

class MakeSureItsNil < Minitest::Test

  def setup
    @obj = nil
  end

  def test_make_sure_its_nil
    assert_nil(@obj, 'This object is not nil')
  end
end