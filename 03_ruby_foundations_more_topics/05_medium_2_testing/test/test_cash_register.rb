require_relative '../lib/cash_register_class'
require_relative '../lib/transaction_class'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

=begin
  S - set up the necessary objects
  E - execute the code against the object being tested
  A - assert the results of the execution
  T - tear down and clean up any lingering artifacts
=end

class CashRegisterTest < Minitest::Test
  def setup
    @item_cost = 20.00
    @trans = Transaction.new(@item_cost)
    @register = CashRegister.new(100.00)
  end

  def test_cash_register_can_accept_money
    @trans.amount_paid = 10.00
    @register.accept_money(@trans)

    assert_equal(110.00, @register.total_money)
  end

  def test_cash_register_returns_correct_change
    @trans.amount_paid = 22

    assert_equal(2.00, @register.change(@trans))
  end

  def test_cash_register_can_display_valid_receipt
    assert_output("You've paid $#{@item_cost}.\n") do 
     @register.give_receipt(@trans) 
    end
  end
end