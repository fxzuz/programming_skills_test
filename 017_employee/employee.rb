#!/usr/bin/env ruby 

elems1 = gets.chomp.split(",")
elems2 = gets.chomp.split(",")

puts (elems1 & elems2).length
