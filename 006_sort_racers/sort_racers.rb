#!/usr/bin/env ruby

racers = {} 
ARGF.each do |line|
    name, position = line.split("-")

    racers[position] = name
end

racers.sort.each do |key, value|
    puts "#{value}-#{key}"
end
