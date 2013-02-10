#!/usr/bin/env ruby

for num in 1000..1200 do
    
    next if not num % 7 == 0
    next if num % 5 == 0

    puts num
end
