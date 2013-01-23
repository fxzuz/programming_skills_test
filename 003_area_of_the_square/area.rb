#!/usr/bin/env ruby

ARGF.each do |line|
    v = line.to_i
    a = v ** (1/3.0)
    s = (a / 2) ** 2
    puts s
end
