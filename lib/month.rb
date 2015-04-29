require_relative '../lib/day.rb'

class Month
  attr_reader :month, :year

  def initialize(month, year)
    @month = month.to_i
    @year  = year
  end

  def name
    month_names = {1=>"January",2=>"February",3=>"March",4=>"April",5=>"May",6=>"June",7=>"July",8=>"August",9=>"September",10=>"October",11=>"November",12=>"December"}
    @name = month_names[@month]
    @name
  end

  def center
    ("#{name} #{year}").center(20).rstrip
  end

  def leap_year?
    if @year.to_i % 4 == 0 and @year.to_i % 100 == 0 and @year.to_i % 400 == 0
      return true
    elsif @year.to_i % 4 == 0 and @year.to_i % 100 == 0 and @year.to_i != 400
      return false
    elsif @year.to_i % 4 == 0
      return true
    elsif @year.to_i % 4 != 0
      return false
    end
  end

  def days_count
    if [4, 6, 9, 11].include?(@month)
      30
    elsif @month.to_i == 2 && self.leap_year? == true
      29
    elsif @month.to_i == 2 && self.leap_year? == false
      28
    else
      31
    end
  end

  def month_setup
    days    = days_count
    first   = Day.new(@month, @year).day_of_week
    list    = ""

      (1..days).each do |d|
        if d == 1
          list << "#{d}"
        elsif d.to_s.length < 2
          list << "  #{d}"
        else
          list << " #{d}"
        end
      end

        if first > 1
          ((first * 3) - 2).times do
            list.prepend(" ")
          end
        else
          list.prepend(" ")
        end

      alpha   = list.slice!(0, 21).rstrip
      beta    = list.slice!(0, 21).rstrip
      delta   = list.slice!(0, 21).rstrip
      gamma   = list.slice!(0, 21).rstrip
      epsilon = list.slice!(0, 21).rstrip
      omega   = list.slice!(0, 21)

      @week_grid = [alpha, beta, delta, gamma, epsilon, omega].join("\n")
  end

  def day_abbr
    "Su Mo Tu We Th Fr Sa"
  end

  def to_s
    warning = <<EOS
Date not in acceptable format/range
./cal.rb [01-12] [1800-3000]
EOS

    if @year.to_i > 3000 || @year.to_i < 1800
      return warning
    elsif @month.to_i > 12
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
end
