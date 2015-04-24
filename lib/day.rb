class Day
  attr_reader :month, :year, :day

  def initialize(month, year)
      @month = month
      @year  = year
  end

  def day_of_week
    m = @month.to_i
    y = @year.to_i

    day = ((1 + (((m + 1) * 26) / 10).floor + y + (y/4).floor + 6 * (y/100) + (y/400)) % 7)
    return day
  end
end
