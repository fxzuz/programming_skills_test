#!/usr/bin/ruby

ARGF.each_with_index do |line, idx|
    num = line.to_i
    sum = 0
    
    a1 = num - 300
    if a1 > 0
        sum += 80 * a1
        num -= a1
    end

    a2 = num - 100
    if a2 > 0
        sum += 70 * a2
        num -= a2
    end

    sum += 60 * num
    puts sum
end
