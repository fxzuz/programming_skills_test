#!/usr/bin/env ruby

ARGF.each do |str|
	puts str.scan(/[aeiou]/i).count
end
