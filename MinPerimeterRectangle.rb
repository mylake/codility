require 'pry'

def solution(n)
  small = Math.sqrt(n).floor
  while (small > 0)
    if n % small == 0
      return (small + (n/small)) * 2
    else
      small -= 1
    end
  end
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 22, solution(30)
  end

end
