#!/usr/bin/python

import math
import sys

words = []

for line in sys.stdin:

  area = int(line)
  a = math.pow(area, 1.0/3) 
  s = math.pow(a/2, 2)
  print s
