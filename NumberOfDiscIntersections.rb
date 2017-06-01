require 'pry'

def solution(a)
  low_array = []
  high_array = []
  counter = 0
  j = 0

  a.each_with_index do |value, index|
    low_array[index] = index - value
    high_array[index] = index + value
  end
  low_array = low_array.sort
  high_array = high_array.sort

  a.each_with_index do |value, index|
    while (j < a.length && high_array[index] >= low_array[j])
      counter += j - index
      j += 1
    end
    return -1 if counter > 10000000
  end
  return counter
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 11, solution([1, 5, 2, 1, 4, 0])
  end

end
