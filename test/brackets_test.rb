require 'minitest/autorun'
require './lib/brackets'

class BracketTest < Minitest::Test
  def test_single_curly
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
