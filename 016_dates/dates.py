#!/usr/bin/env python

from datetime import date
import sys

for i, line in enumerate(sys.stdin):

    year, month = [int(num) for num in line.rstrip().split('-')]
    month += 1

    current = date(year, month, 28)
    print current.strftime("%^A") 
