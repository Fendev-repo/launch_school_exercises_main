require_relative '../lib/cash_register_class'
require_relative '../lib/transaction_class'
require 'stringio'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

=begin
  S - set up the necessary objects
  E - execute the code against the object being tested
  A - assert the results of the execution
  T - tear down and clean up any lingering artifacts
=end

class TransactionTest < Minitest::Test
  def setup
    @trans = Transaction.new(42.00)
    @input = StringIO.new('42\n')
    @output = StringIO.new
  end

  def test_prompt_for_payment_prompts_for_payment_amount
    assert_output(/How much are you paying?/) do
      @trans.prompt_for_payment(input: @input)
    end
  end

  def test_prompt_for_payment_collects_payment_amount_value
    @trans.prompt_for_payment(input: @input, output: @output)
    assert_equal(42, @trans.amount_paid)
  end
end