require 'pry'

def solution(a)
  b = a.sort
  [b[-1] * b[-2] * b[-3], b[0] * b[1] * b[-1]].max
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 60, solution([-3, 1, 2, -2, 5, 6])
  end

end
