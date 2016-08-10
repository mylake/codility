
def frog_jump(x, y, d)
  (y - x + d - 1)/d
end


require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example
    assert_equal 3, frog_jump(10, 85, 30)
  end

  def test_example2
    assert_equal 3, frog_jump(10, 100, 30)
  end
end
