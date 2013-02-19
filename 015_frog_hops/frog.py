#!/usr/bin/python

import sys

for i, line in enumerate(sys.stdin):

  num = int(line)
 
  dist = 0
  hop  = 1

  for i in xrange(num):
    if hop == 1:
      dist += 20
      hop = 2 
    elif hop == 2:
      dist += 10
      hop = 3
    elif hop == 3:
      dist += 5 
      hop = 1

  print dist
