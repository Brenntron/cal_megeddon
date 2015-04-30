require_relative '../lib/day.rb'

class Month
  attr_reader :month, :year

  def initialize(month, year)
    @month = month.to_i
    @year  = year.to_i
  end

  def to_s
    warning = <<EOS
Date not in acceptable format/range
./cal.rb [01-12] [1800-3000]
EOS

    if @month > 12 || @month < 1 || @year > 3000 || @year < 1800
      return warning
    else
      month_setup
        <<EOS
#{center}
#{day_abbr}
#{@week_grid}
EOS
    end
  end

  def name
    month_names = {1=>"January",2=>"February",3=>"March",4=>"April",5=>"May",6=>"June",
                   7=>"July",8=>"August",9=>"September",10=>"October",11=>"November",
                   12=>"December"}
    name = month_names[@month]
    name
  end

  def center
    ("#{name} #{year}").center(20).rstrip
  end

  def leap_year?
    (@year % 4 == 0 && @year % 100 != 0) || (@year % 100 == 0 && @year % 400 == 0)
  end

  def days_count
    return 30 if [4, 6, 9, 11].include?(@month)
    return 29 if @month == 2 && self.leap_year? == true
    return 28 if @month == 2 && self.leap_year? == false
    return 31 if [1, 3, 5, 7, 8, 10, 12].include?(@month)
  end

  def month_setup
    days                = days_count
    @list               = ""
    single_digit_spaces = "  "
    double_digit_space  = " "

    (1..days).each do |d|
      if d == 1
        @list << "#{d}"
      elsif d.to_s.length < 2
        @list << single_digit_spaces + "#{d}"
      else
        @list << double_digit_space + "#{d}"
      end
    end

    prepender
    grid_maker
  end

  def prepender
    first             = Day.new(@month, @year).day_of_week
    first_day_spacing = " "

    if first > 1
      ((first * 3) - 2).times do
        @list.prepend(first_day_spacing)
      end
    else
      @list.prepend(first_day_spacing)
    end
  end

  def grid_maker
      alpha   = @list.slice!(0, 21).rstrip
      beta    = @list.slice!(0, 21).rstrip
      delta   = @list.slice!(0, 21).rstrip
      gamma   = @list.slice!(0, 21).rstrip
      epsilon = @list.slice!(0, 21).rstrip
      omega   = @list.slice!(0, 21)

      @week_grid = [alpha, beta, delta, gamma, epsilon, omega].join("\n")
  end

  def day_abbr
    "Su Mo Tu We Th Fr Sa"
  end
end
