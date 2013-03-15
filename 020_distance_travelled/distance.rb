#!/usr/bin/env ruby

u = 36 * 1000 / 3600
a = 5

ARGF.each do |time|

    time = time.to_i
    puts u * time + (a * time * time) / 2;
end
