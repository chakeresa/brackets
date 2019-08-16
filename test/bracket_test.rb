require 'minitest/autorun'
require './lib/brackets'

class BracketTest < Minitest::Test
  def test_init
    bracket = Bracket.new("[]")
    assert_equal "[]", bracket.str
    assert_equal [], bracket.valid_chars
  end

  def test_single_curly
    skip
    assert_equal true, bracket('{}')
  end

  def test_single_square
    skip
    assert_equal true, bracket('[]')
  end

  def test_single_round
    skip
    assert_equal true, bracket('()')
  end
end
