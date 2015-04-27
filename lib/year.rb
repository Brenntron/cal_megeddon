require_relative '../lib/month.rb'

class Year
  attr_reader :year, :month

  def initialize(year)
    @year = year
  end

  def center
    ("#{year}").center(64).rstrip
  end

  def to_s

    <<EOS
#{center}
EOS
  end
end
