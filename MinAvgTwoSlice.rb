require 'pry'

def solution(a)
  smallest = (a[0] + a[1])/2.to_f
  smallest_index = 0
  a.each_with_index do |item, index|
    if ((index + 1) < a.length) && (item + a[index + 1].to_i)/2.to_f < smallest
      smallest_index = index
      smallest = (item + a[index + 1].to_i)/2.to_f
    end

    if ((index + 2) < a.length) && (item + a[index + 1].to_i + a[index + 2].to_i)/3.to_f < smallest
      smallest_index = index
      smallest = (item + a[index + 1].to_i + a[index + 2].to_i)/3.to_f
    end
  end
  smallest_index
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 1, solution([4, 2, 2, 5, 1, 5, 8])
  end

  def test_2
    assert_equal 0, solution([10000, -10000])
  end
end
