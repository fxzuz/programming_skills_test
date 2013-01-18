#!/usr/bin/env ruby

ARGF.each do |line|
    prices = line.split(",").map { |s| s.to_f }

    max_price = 0
    avg       = 0

    prices.each do |price|
        max_price = price if price > max_price
        avg += price
    end

    avg  = (avg / prices.length).floor
    puts avg
    puts max_price
    fluc = (max_price - avg) / max_price * 100
    puts fluc
end
