require 'pry'

def solution(a)
  left = 0
  right = 0
  result = []
  a.each { |value| right += value }

  a[0..a.size-2].each do |value|
    left += value
    right -= value
    result << (left - right).abs
  end
  result.min
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 1, solution([3, 1, 2, 4, 3])
  end

  def test_example_input
    assert_equal 20, solution([-10, -20, -30, -40, 100])
  end
end
