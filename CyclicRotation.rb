require 'pry'

def solution(a, k)

  a_length = a.length
  return a if a_length == 0
  k = k % a_length if k >= a_length
  return a if k == 0
  result = []
  a.each_with_index do |data, i|
    new_i = (i + k) % a_length
    result[new_i] = data
  end
  result
end



require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal [6, 3, 8, 9, 7], solution([3, 8, 9, 7, 6], 1)
  end

  def test_2
    assert_equal [9, 7, 6, 3, 8], solution([3, 8, 9, 7, 6], 3)
  end

end
