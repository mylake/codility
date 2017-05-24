require 'pry'

def solution(a)
  a = a.sort
  a.each_with_index do |item, index|
    return 0 if index > a.count - 3
    return 1 if item.to_i + a[index+1].to_i > a[index + 2].to_i
  end
  0
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 0, solution([10, 50, 5, 1] )
  end

end
