#!/usr/bin/env ruby

require_relative "lib/month"
require_relative "lib/day"
require_relative "lib/year"

if ARGV.length > 1
  month = ARGV[0]
  year  = ARGV[1]

  m = Month.new(month, year)
  puts m.to_s
else
  year = ARGV

  y = Year.new(year)
  puts y.to_s
end
