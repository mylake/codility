require 'pry'

def solution(x, a)
  b = {}
  a.each_with_index do |item, index|
    if !b[item]
      b[item] = true
      x -= 1
    end
    return index if x == 0
  end
  return -1
end



require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 6, solution(5, [1, 3, 1, 5, 2, 3, 4, 4])
  end

  def test_2
    assert_equal -1, solution(6, [1, 3, 1, 4, 2, 3, 5, 4])
  end

end
