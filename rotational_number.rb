require 'pry'

def solution(input)
  rotational_hash = {
    '0' => '0',
    '1' => '1',
    '6' => '9',
    '8' => '8',
    '9' => '6'
  }
  return false unless input
  find_times = input.length/2 + 1
  find_times.times do |i|
    return false unless rotational_hash[input[i]]
    return false unless rotational_hash[input[i]] == input[-i-1]
  end
  true
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal true, solution('18081')
  end

  def test_2
    assert_equal false, solution('1081')
  end

  def test_3
    assert_equal true, solution('6180819')
  end

  def test_4
    assert_equal true, solution('0')
  end

  def test_5
    assert_equal false, solution('5')
  end
end
