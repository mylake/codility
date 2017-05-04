require 'pry'

def solution(a, b, k)
  if (a % k) == 0
    ((b - a) / k) + 1
  else
    (b - (a - a % k )) / k
  end
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 3, solution(6, 11, 2)
  end

  def test_2
    assert_equal 20, solution(11, 345, 17)
  end
end
