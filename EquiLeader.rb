require 'pry'

def solution(a)
  return 0 if a.length == 1
  candidate_leader_value = 0
  candidate_leader_count = 0

  a.each do |aa|
    if candidate_leader_count == 0
      candidate_leader_value = aa
      candidate_leader_count += 1
    else
      if candidate_leader_value == aa
        candidate_leader_count += 1
      else
        candidate_leader_count -= 1
      end
    end
  end

  return 0 if candidate_leader_count == 0
  leader_count = a.select { |aa| aa == candidate_leader_value }.count

  return 0 unless leader_count > a.length/2
  leader_value = candidate_leader_value
  left_leader_count = 0
  equi_leader_count = 0

  a.each_with_index do |aa, index|
    left_leader_count += 1 if leader_value == aa
    current_length = index + 1

    if left_leader_count > current_length/2
      right_leader_count = leader_count - left_leader_count
      if right_leader_count > (a.length - current_length)/2
        equi_leader_count += 1
      end
    end
  end
  equi_leader_count

end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 2, solution([4, 3, 4, 4, 4, 2])
  end

end
