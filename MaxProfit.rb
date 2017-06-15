require 'pry'

def solution(a)
  min = 200000
  maxprofit = 0
  a.each_with_index do |aa, index|
    min = [aa, min].min
    maxprofit = [aa - min, maxprofit].max
  end
  maxprofit
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 356, solution([23171, 21011, 21123, 21366, 21013, 21367])
  end

end
