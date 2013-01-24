#!/usr/bin/env ruby

ARGF.each do |line|
    num = line.to_i
    s   = num ** 2
    
    if s > 9
        s = s.to_s
        first = s[0].to_i
        last  = s[-1].to_i
        sum = first + last
        puts sum
    else
        puts s
    end
end
