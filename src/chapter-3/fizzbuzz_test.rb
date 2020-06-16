require 'minitest/autorun'
require_relative './fizzbuzz'

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal fizz_buzz(1), '1'
    assert_equal fizz_buzz(2), '2'
    assert_equal fizz_buzz(3), 'Fizz'
    assert_equal fizz_buzz(4), '4'
    assert_equal fizz_buzz(5), 'Buzz'
    assert_equal fizz_buzz(6), 'Fizz'
    assert_equal fizz_buzz(15), 'Fizz Buzz'
  end
end
