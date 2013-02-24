#!/usr/bin/env python

import sys

line1 = sys.stdin.readline()
line2 = sys.stdin.readline()

numbers1 = set([int(num) for num in line1.rstrip().split(',')])
numbers2 = set([int(num) for num in line2.rstrip().split(',')])

print len(numbers1.intersection(numbers2))
