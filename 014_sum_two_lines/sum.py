#!/usr/bin/env python

import sys

line1 = sys.stdin.readline()
line2 = sys.stdin.readline()

numbers1 = [int(num) for num in line1.rstrip().split(',')]
numbers2 = [int(num) for num in line2.rstrip().split(',')]

sum = []
for num in xrange(0, len(numbers1)):
   sum.append(numbers1[num] + numbers2[num])

print ",".join([str(num) for num in sum])
