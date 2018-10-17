require 'pry-byebug'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

=begin
Write a unit test that will 
fail if list and the return value of list.process are different objects.
=end

class AwesomeList
  attr_reader :list 

  def initialize
    @list = [1, 2, 3, 4, 10]
  end

  def process
    self.list
  end
end


class TestReturnValueIsTheSameAsObj < MiniTest::Test

  def setup
    @list = AwesomeList.new
  end

  def test_return_val_is_same_as_obj
    assert_equal([1, 2, 3, 4, 10], @list.process)
  end
end