require 'minitest/autorun'
require_relative '../lib/odd_words'
require "minitest/reporters"
Minitest::Reporters.use!

class TestOddWords < Minitest::Test

  def test_odd_words_outputs_correctly
    assert_output('whats eht matter htiw kansas.') do 
      odd_words('text.txt')
    end
  end

  def test_empty_string_returns_error_message
    assert_equal('Input was empty', odd_words('text_empty_str.txt'))
  end

  def test_invalid_characters_returns_error_message
    assert_equal('invalid characters', odd_words('text_invalid_chars.txt'))
  end

  def test_odd_words_adds_a_full_stop_if_missing_one
    assert_output('whats eht matter htiw kansas.') do 
      odd_words('text_no_full_stop.txt')
    end
  end

  def test_odd_replaces_more_than_one_space_with_single_space
    assert_output('whats eht matter htiw kansas.') do 
      odd_words('text_two_or_more_spaces.txt')
    end
  end

  def test_words_longer_than_20_return_an_error_message
    assert_equal('Word(s) length > 20', odd_words('text_long_words.txt'))
  end
end