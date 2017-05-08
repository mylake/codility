require 'pry'

def solution(a)
  count_0 = 0
  result = 0
  a.each do |item|
    count_0 += 1 if item == 0
    result += count_0 if item == 1
    return -1 if result > 1_000_000_000
  end
  result
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase

  def test_1
    assert_equal 5, solution([0, 1, 0, 1, 1])
  end
end
