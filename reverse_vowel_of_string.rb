require 'pry'

def solution(input)
  length = input.length
  left = 0
  right = input.length - 1
  while (left < right) do
    if is_vowel(input[left]) && is_vowel(input[right])
      temp = input[left]
      input[left] = input[right]
      input[right] = temp
      right -= 1
      left += 1
      next
    end
    if is_vowel(input[left])
      right -= 1
    else
      left += 1
    end
  end
  input
end

def is_vowel(word)
  vowel = { 'a' =>  1, 'e' => 1, 'i' => 1, 'o' => 1, 'u' => 1 }
  vowel[word.downcase] == 1 ? true : false
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 'eppla', solution('apple')
  end

  def test_2
    assert_equal 'freind', solution('friend')
  end
end
