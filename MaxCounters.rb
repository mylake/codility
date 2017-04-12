require 'pry'

def solution(n, a)
  result = []
  max = next_max = 0
  (1..n).each do |d|
    result << 0
  end

  a.each do |b|
    b = b - 1
    if b >= n
      max = next_max
    else
      result[b] = [result[b] + 1, max + 1].max
      next_max = [result[b], next_max].max
    end
  end
  result.each_with_index do |value, index|
    result[index] = max if value < max
  end
  result
end



require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal [3, 2, 2, 4, 2], solution(5, [3, 4, 4, 6, 1, 4, 4])
  end

end
