#!/usr/bin/env ruby

total_num = cur_num = 0
ARGF.each_with_index do |line, idx|
    num = line.to_i

    dist = 0
    hop  = 1

    for i in 1..num
        case hop
            when 1
                dist += 20
                hop = 2
            when 2
                dist += 10
                hop = 3
            when 3
                dist += 5
                hop = 1
        end 
    end

    puts dist 
end
