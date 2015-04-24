require_relative 'helper'
require_relative '../lib/day'
require_relative '../lib/month'

class TestDay < Minitest::Test
  def test_for_sunday
    d = Day.new(01, 2017)
    assert_equal 1, d.day_of_week
  end

  def test_for_friday
    d = Day.new(06, 2017)
    assert_equal 6, d.day_of_week
  end
end

