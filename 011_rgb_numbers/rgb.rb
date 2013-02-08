#!/usr/bin/env ruby

converted = []
ARGF.each_with_index do |line, idx|

    colors = line.split(',')

    colors.each do |color|
        digits = color.split('-')

        is_valid = 1        
        convert = []
        digits.each do |digit|
            digit = digit.to_i
            if digit > 255
                is_valid = 0
            end 
            convert.push digit
        end

        result = ''
        if is_valid > 0
            convert = convert.collect {|x| "%02X" % x }     
            result = "#" + convert.join('')
        else 
            result ='INVALID'
        end

        converted.push result
   end
end

puts converted.join(',')
