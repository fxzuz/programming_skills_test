#!/usr/bin/env ruby

racers = {} 
ARGF.each do |line|
    words = line.split(" ")

    words.each do |word|
        if /^[A-Z]{1}/ =~ word
            puts word
        end
    end
end
