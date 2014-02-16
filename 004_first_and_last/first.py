#!/usr/bin/python

import sys

for line in sys.stdin:

  num = int(line)
  square = num ** 2

  if square > 9:

    square = str(square)
    first = int(square[0])
    last  = int(square[-1])
    sum = first + last
    print sum
  else:

    print square 
