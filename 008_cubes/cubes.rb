#!/usr/bin/env ruby

total_num = cur_num = 0
ARGF.each_with_index do |line, idx|
    num = line.to_i

    if idx == 0
        total_num = num
        next
    else
        cur_num += 1
    end

    sum = 0
    for i in 1..num
        sum += i ** 3
    end
    puts sum 
end
