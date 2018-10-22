require_relative '../lib/text_class'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

class TextTest < Minitest::Test
  def setup
    @sample_text = File.open('../sample_text.txt')
    @text_as_string = @sample_text.read
    @text_obj = Text.new(@text_as_string)
    @letter = 'a'
    @replacement = 'e'
  end

  def test_can_swap_all_instances_of_letter
    updated_str = @text_obj.swap(@letter, @replacement)

    assert_equal(false, updated_str.include?(@letter))
  end

  def test_number_of_increased_replacement_letters_is_correct
    num_rep_before = @text_as_string.count(@replacement)
    num_let_before = @text_as_string.count(@letter)
    num_rep_after = @text_obj.swap(@letter, @replacement)

    assert_equal(num_let_before + num_rep_before, num_rep_after.count(@replacement))
  end

  def test_word_count_method_counts_correctly
    assert_equal(@text_as_string.split.count, @text_obj.word_count)
  end

  def teardown
    @sample_text.close
  end
end