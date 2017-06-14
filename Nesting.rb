require 'pry'

def solution(s)
  return 1 if s.length == 0
  stack = []
  s = s.split('')
  s.each do |i|
    if i == '('
      stack << i
    else
      pop = stack.pop
      return 0 unless pop == '(' && i == ')'
    end
  end
  stack.empty? ? 1 : 0
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 0, solution('(()(())())')
  end

end
