require_relative "helper"

class TestCalIntegration < Minitest::Test

  def test_month_that_starts_on_sunday
    output   = `./cal.rb 01 2012`
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
     assert_equal expected, output
  end

  def test_regular_leap_years
    output   = `./cal.rb 02 2012`
    expected = <<EOS
   February 2012
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29

EOS
    assert_equal expected, output
  end

  def test_century_leap_years
    output   = `./cal.rb 02 2400`
    expected = <<EOS
   February 2400
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29

EOS
    assert_equal expected, output
  end

  def test_century_non_leap_years
    output   = `./cal.rb 02 1900`
    expected = <<EOS
   February 1900
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28

EOS
    assert_equal expected, output
  end

  def test_january_2011
    output   = `./cal.rb 01 2011`
    expected = <<EOS
    January 2011
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31
EOS
    assert_equal expected, output
  end

  def test_february_2011_non_leap_year
    output   = `./cal.rb 02 2011`
    expected = <<EOS
   February 2011
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28

EOS
    assert_equal expected, output
  end

  def test_february_2012_leap_year
    output   = `./cal.rb 02 2012`
    expected = <<EOS
   February 2012
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29

EOS
    assert_equal expected, output
  end

  def test_march_2011
    output   = `./cal.rb 03 2011`
    expected = <<EOS
     March 2011
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30 31

EOS
    assert_equal expected, output
  end

  def test_april_2011
    output   = `./cal.rb 04 2011`
    expected = <<EOS
     April 2011
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30

EOS
    assert_equal expected, output
  end

  def test_may_2011
    output   = `./cal.rb 05 2011`
    expected = <<EOS
      May 2011
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal  output, expected
  end

  def test_june_2011
    output   = `./cal.rb 06 2011`
    expected = <<EOS
     June 2011
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30

EOS
    assert_equal expected, output
  end

  def test_july_2011
    output   = `./cal.rb 07 2011`
    expected = <<EOS
     July 2011
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
31
EOS
    assert_equal expected, output
  end

  def test_august_2011
    output   = `./cal.rb 08 2011`
    expected = <<EOS
    August 2011
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31

EOS
    assert_equal expected, output
  end

  def test_september_2011
    output   = `./cal.rb 09 2011`
    expected = <<EOS
   September 2011
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30

EOS
    assert_equal expected, output
  end

  def test_october_2011
    output   = `./cal.rb 10 2011`
    expected = <<EOS
    October 2011
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31
EOS
    assert_equal expected, output
  end

  def test_november_2011
    output   = `./cal.rb 11 2011`
    expected = <<EOS
   November 2011
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30

EOS
    assert_equal expected, output
  end

  def test_december_2011
    output   = `./cal.rb 12 2011`
    expected = <<EOS
   December 2011
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31

EOS
    assert_equal expected, output
  end

  def test_min_date
    output   = `./cal.rb 01 1800`
    expected = <<EOS
    January 1800
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31

EOS
    assert_equal output, expected
  end

  def test_max_date
    output   = `./cal.rb 12 3000`
    expected = <<EOS
   December 3000
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31

EOS
    assert_equal output, expected
  end

  def test_date_too_early
    output   = `./cal.rb 12 1799`
    expected = <<EOS
Date not in acceptable format/range
./cal.rb [01-12] [1800-3000]
EOS
    assert_equal expected, output
  end

  def test_date_too_late
    output   = `./cal.rb 01 3001`
    expected = <<EOS
Date not in acceptable format/range
./cal.rb [01-12] [1800-3000]
EOS
    assert_equal expected, output
  end

  def test_with_no_0_in_month
    output   = `./cal.rb 1 2368`
    expected = <<EOS
    January 2368
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31

EOS
    assert_equal expected, output
  end

  def test_max_year
    output = `./cal.rb 3000`
    expected = <<EOS
                             3000

      January               February               March
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
          1  2  3  4                     1                     1
 5  6  7  8  9 10 11   2  3  4  5  6  7  8   2  3  4  5  6  7  8
12 13 14 15 16 17 18   9 10 11 12 13 14 15   9 10 11 12 13 14 15
19 20 21 22 23 24 25  16 17 18 19 20 21 22  16 17 18 19 20 21 22
26 27 28 29 30 31     23 24 25 26 27 28     23 24 25 26 27 28 29
                                            30 31
       April                  May                   June
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
       1  2  3  4  5               1  2  3   1  2  3  4  5  6  7
 6  7  8  9 10 11 12   4  5  6  7  8  9 10   8  9 10 11 12 13 14
13 14 15 16 17 18 19  11 12 13 14 15 16 17  15 16 17 18 19 20 21
20 21 22 23 24 25 26  18 19 20 21 22 23 24  22 23 24 25 26 27 28
27 28 29 30           25 26 27 28 29 30 31  29 30
                                            
        July                 August              September
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
       1  2  3  4  5                  1  2      1  2  3  4  5  6
 6  7  8  9 10 11 12   3  4  5  6  7  8  9   7  8  9 10 11 12 13
13 14 15 16 17 18 19  10 11 12 13 14 15 16  14 15 16 17 18 19 20
20 21 22 23 24 25 26  17 18 19 20 21 22 23  21 22 23 24 25 26 27
27 28 29 30 31        24 25 26 27 28 29 30  28 29 30
                      31                    
      October               November              December
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
          1  2  3  4                     1      1  2  3  4  5  6
 5  6  7  8  9 10 11   2  3  4  5  6  7  8   7  8  9 10 11 12 13
12 13 14 15 16 17 18   9 10 11 12 13 14 15  14 15 16 17 18 19 20
19 20 21 22 23 24 25  16 17 18 19 20 21 22  21 22 23 24 25 26 27
26 27 28 29 30 31     23 24 25 26 27 28 29  28 29 30 31
                      30                    
EOS
    assert_equal expected, output
  end
end
