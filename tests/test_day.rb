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
    assert_equal 5, d.day_of_week
  end

  def test_for_saturday
    d = Day.new(01, 2000)
    assert_equal 7, d.day_of_week
  end

  def test_feb_2012
    d= Day.new(02, 2012)
    assert_equal 4, d.day_of_week
  end

  def test_jan_2011
    d = Day.new(01, 2011)
    assert_equal 7, d.day_of_week
  end
end
