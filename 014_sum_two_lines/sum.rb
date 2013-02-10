#!/usr/bin/env ruby 

line1 = gets
line2 = gets

elems1 = line1.chomp.split(",")
elems2 = line2.chomp.split(",")
sum    = []

for i in 0 .. elems1.length - 1
   sum[i] = elems1[i].to_i + elems2[i].to_i
end

puts sum.join(",")
