require 'minitest/autorun'
require './lib/bracket'

class BracketTest < Minitest::Test
  def test_init
    bracket = Bracket.new("[]")
    assert_equal "[]", bracket.str
    assert_equal [], bracket.valid_chars
  end

  def test_single_curly
    assert_equal true, bracket('{}')
  end

  def test_single_square
    assert_equal true, bracket('[]')
  end

  def test_single_round
    assert_equal true, bracket('()')
  end

  def test_unclosed_fails
    assert_equal false, bracket('{(')
  end
end
