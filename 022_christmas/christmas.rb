#!/usr/bin/env ruby

ARGF.each do |str|
	base = str.to_i
	(1..base).each do |n|
		puts ' ' * (base - n) + Array.new(n, n).join(' ')
	end 
end
