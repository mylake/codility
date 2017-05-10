require 'pry'

def solution(s, p, q)
  # ACGT, 1234
  ss = s.scan(/\w/)
  result = []
  a = []
  c = []
  g = []
  ss.each_with_index do |item, index|
    a_add = item == 'A' ? 1 : 0
    c_add = item == 'C' ? 1 : 0
    g_add = item == 'G' ? 1 : 0

    a[index + 1] = a[index].to_i + a_add
    c[index + 1] = c[index].to_i + c_add
    g[index + 1] = g[index].to_i + g_add
  end

  p.each_with_index do |item, index|
    aa = a[q[index] + 1] - a[item].to_i
    cc = c[q[index] + 1] - c[item].to_i
    gg = g[q[index] + 1] - g[item].to_i
    result[index] = 4
    result[index] = 3 if gg > 0
    result[index] = 2 if cc > 0
    result[index] = 1 if aa > 0
  end
  result
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_1
    assert_equal [2, 4, 1], solution('CAGCCTA', [2, 5, 0], [4, 5, 6])
  end
end
