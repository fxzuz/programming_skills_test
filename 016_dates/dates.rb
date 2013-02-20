#!/usr/bin/env ruby

require 'date'

ARGF.each_with_index do |line, idx|

    year, month = line.split('-')
    current = Date.new(year.to_i, month.to_i + 1, 28) 
    puts current.strftime("%^A")
end
