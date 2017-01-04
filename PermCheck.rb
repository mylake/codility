require 'pry'

def solution(a)
  expected_array = [*1..a.size]
  if expected_array.size == a.size && (expected_array - a).empty?
    1
  else
    0
  end
end



require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 1, solution([4, 1, 3, 2])
  end

  def test_2
    assert_equal 0, solution([2, 3, 5])
  end

  def test_3
    assert_equal 0, solution([1, 1])
  end

end
