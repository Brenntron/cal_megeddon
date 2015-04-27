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
    if @year % 4 == 0 and @year % 100 == 0 and @year % 400 == 0
      return true
    elsif @year % 4 == 0 and @year % 100 == 0 and @year != 400
      return false
    elsif @year % 4 == 0
      return true
    else
      return false
    end
  end

  def days_count
    if [4, 6, 9, 11].include?(@month)
      30
    elsif @month == 14 || @month == 2 && self.leap_year? == true
      29
    elsif @month == 14 || @month == 2 && self.leap_year? == false
      28
    else
      31
    end
  end

  def to_s
    days    = days_count
    first   = Day.new(@month, @year).day_of_week
    list    = ""
    warning = <<EOS
Date not acceptable format/range
./cal.rb [01-12] [1800-3000]
EOS


    if @year.to_i < 1800
      print warning.chomp
    elsif @year.to_i > 3000
      print warning.chomp
      else
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
      omega   = list.slice!(0, 21).rstrip

      <<EOS
#{center}
Su Mo Tu We Th Fr Sa
#{alpha}
#{beta}
#{delta}
#{gamma}
#{epsilon}
#{omega}
EOS
    end
  end
end
