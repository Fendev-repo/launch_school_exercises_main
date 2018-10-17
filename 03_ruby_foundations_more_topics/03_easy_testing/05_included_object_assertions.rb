require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

=begin
Write a minitest assertion that will fail if the 'xyz' 
is not in the Array list.
=end

class IsStringInArray < Minitest::Test

  def setup
    @ary = ['abc', 'efg', 'xyz']
  end

  def test_that_string_is_included_in_array
    assert_includes(@ary, 'xyz', 'string is not included in collection')
  end
end