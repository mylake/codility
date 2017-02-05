require 'pry'

def solution(mapdata)
  return 0 if mapdata.empty?
  @x = mapdata.length
  @y = mapdata[0].length

  @count = 0

  @x.times do |i|
    @y.times do |j|
      if mapdata[i][j] == '1'
        dfs(mapdata, i, j)
        @count += 1
      end
    end
  end

  @count
end

def dfs(mapdata, i, j)
  return if (j >= @y) || (i >= @x) || (i < 0) || (j < 0) || mapdata[i][j] != '1'
  mapdata[i][j] = 'x'
  dfs(mapdata, i, j + 1)
  dfs(mapdata, i + 1, j)
  dfs(mapdata, i - 1, j)
  dfs(mapdata, i, j - 1)
end


require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal 3, solution(['11101',
                              '10100',
                              '00101'])
  end

  def test_2
    assert_equal 1, solution(["11110",
                              "11010"])
  end

  def test_3
    assert_equal 0, solution([])
  end

  def test_4
    assert_equal 1, solution(["111",
                              "010",
                              "111"])
  end
end
