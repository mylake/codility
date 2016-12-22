require 'pry'

def solution(a)
  hash = {}
  a.each do |data|
    if hash[data]
      hash.delete(data)
    else
      hash[data] = true
    end
  end
  hash.keys.first
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 7, solution([9, 3, 9, 3, 9, 7, 9])
  end
end
