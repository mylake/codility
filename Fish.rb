require 'pry'

def solution(a, b)
  up_stream = []
  down_stream = []

  a.each_with_index do |fish, i|
    if b[i] == 1
      down_stream << fish
    else
      while !down_stream.empty? && down_stream[-1] < fish
        down_stream.pop
      end
      if down_stream.empty?
        up_stream << fish
      end
    end
  end
  up_stream.size + down_stream.size
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 2, solution([4, 3, 2, 1, 5], [0, 1, 0, 0, 0])
  end

end
