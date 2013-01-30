#!/usr/bin/env ruby

ARGF.each_with_index do |line, idx|
    num     = line.count("\d{1}")
    letters = line.count("[a-zA-Z]+")

    if num < 2 or letters < 4
        puts 'INVALID'
    else
        puts 'VALID' 
    end
end
