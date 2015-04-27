class Day
  attr_reader :month, :year

  def initialize(month, year)
    @month = month.to_i
    @year  = year.to_i
  end

  def day_of_week
    start_of_month = 1

    if month < 3
      @month += 12
      @year  -= 1
    end

    @start_day = (start_of_month + (((@month + 1) * 26) / 10).floor + @year + (@year / 4).floor + 6 * (@year / 100).floor + (@year / 400).floor) % 7

    if @start_day == 0
      @start_day = 7
    end
    @start_day
  end
end
