require 'pry'

def solution(source)
  number = source.length + 1
  sum = 0
  source.each { |item| sum += item }
  answer = (number * (number + 1)) / 2 - sum
  answer
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 4, solution([2, 3, 1, 5])
  end
end
