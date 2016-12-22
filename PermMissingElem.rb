require 'pry'

def solution(a)
  result = [*1..a.size+1] - a
  result.first
end



require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 4, solution([2, 3, 1, 5])
  end
end
