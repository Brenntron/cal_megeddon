require_relative 'helper'
require_relative '../lib/month'

class TestMonth < Minitest::Test
  def test_initializing_a_month_saves_value
    m = Month.new(05, 2015)
    assert_equal 05, m.month
    assert_equal 2015, m.year
  end

  def test_to_s_on_jan_2012
    m        = Month.new(01, 2012)
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal expected, m.to_s
  end

  def test_to_s_on_jan_2017
    m        = Month.new(01, 2017)
    expected = <<EOS
    January 2017
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal expected, m.to_s
  end

  def test_name_for_march
    m = Month.new(03, 2009)
    assert_equal "March", m.name
  end

  def test_name_for_jan
    m = Month.new(01, 2009)
    assert_equal "January", m.name
  end

  def test_name_for_dec
    m = Month.new(12, 2009)
    assert_equal "December", m.name
  end

  def test_days_in_month
    m = Month.new(05, 1992)
    assert_equal 31, m.days_count
  end

  def test_leap_year
    m = Month.new(02, 2012)
    assert_equal true, m.leap_year?
  end

  def test_days_count
    m = Month.new(02, 2012)
    assert_equal 29, m.days_count
  end
end
