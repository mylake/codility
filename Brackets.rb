require 'pry'

def solution(s)
  return 1 if s.length == 0
  s = s.split('')
  stack = []
  s.each do |i|
    if i == '(' or i == '[' or i == '{'
      stack << i
    else
      pop = stack.pop
      return 0 unless (pop == '(' && i == ')') or (pop == '[' && i == ']') or (pop == '{' && i == '}')
    end
  end
  stack.empty? ? 1 : 0
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 1, solution('{[()()]}')
  end

end
