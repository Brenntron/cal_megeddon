require_relative '../lib/month.rb'

class Year
  attr_reader :year, :month

  def initialize(year)
    @year = year.to_i
  end

  def center_year
    ("#{year}").center(63).rstrip
  end

  def month_formatter(m)
    month = Month.new(m, @year)
    list_of_months = <<EOS
#{month.name.center(20).rstrip}
#{month.day_abbr}
#{month.month_setup}
EOS
    list_of_months
  end

  def month_maker
    months_array = []
    (1..12).each do |m|
      month = month_formatter(m)
      months_array << month
    end
    months_array
  end

  def combinator(month_1, month_2, month_3)
    combo = ""
    grid_spacing = "  "
    line2 = month_2.to_s.lines
    line3 = month_3.to_s.lines
    month_1.each_line.with_index do |line, index|
      combo << line.chomp.ljust(20) + grid_spacing + line2[index].chomp.ljust(20) + grid_spacing << line3[index]
    end
    combo
  end

  def to_s
    new_line = "\n"
    warning = <<EOS
Date not in acceptable format/range
./cal.rb [01-12] [1800-3000]
EOS

    if @year > 3000 || @year < 1800
      return warning
    else
      month_grid = "#{center_year}"
      month_grid << new_line << new_line
      months_array = month_maker
      months_array.each_slice(3) do |m|
        month_grid << combinator(m[0], m[1], m[2])
      end
      month_grid
    end
  end
end
