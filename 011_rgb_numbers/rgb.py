#!/usr/bin/python

import sys

converted = []
for i, line in enumerate(sys.stdin):
  colors = line.rstrip().split(',')

  for color in colors:
    digits = [int(digit) for digit in color.split('-')]
    
    is_valid = 1
    for digit in digits:
      if digit > 255:
        is_valid = 0

    if is_valid:
      result = '#'
      result += ''.join(["%0.2X" % digit for digit in digits])
    else:
      result = 'INVALID'
    converted.append(result)

# print result
print ','.join(converted) 
