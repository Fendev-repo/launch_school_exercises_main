require 'pry-byebug'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

=begin
Write a unit test that will fail 
if 'xyz' is one of the elements in the Array list:  
=end

class MakeSureItsNotInCollection < Minitest::Test

  def setup
    @array = ['abc', 'hello']
  end

  def test_value_does_not_exist_in_collection
    refute_includes(@array, 'xyz')
  end
end