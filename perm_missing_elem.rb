require 'pry'

def solution(source)
  expected_array = [*1..source.size+1]
  (expected_array - source).first
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 4, solution([2, 3, 1, 5])
  end
end
