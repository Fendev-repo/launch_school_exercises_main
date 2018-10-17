require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

=begin
Write a minitest assertion that will fail if the Array list is not empty.
=end

class MakeSureArrayIsEmpty < Minitest::Test
  def setup
    @list = [1]
  end

  def test_that_array_is_empty
    assert_empty(@list)
  end
end