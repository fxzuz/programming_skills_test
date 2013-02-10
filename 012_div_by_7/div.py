#!/usr/bin/env python

for num in xrange(1000, 1200):
 
  if num % 7 != 0:
    continue 

  if num % 5 == 0:
    continue 
 
  print num
