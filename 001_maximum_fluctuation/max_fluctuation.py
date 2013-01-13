#!/usr/env/bin python

import sys

for i, line in enumerate(sys.stdin):

  line = line.rstrip()
  prices = [int(price) for price in line.split(',')]

  max = sum = 0
  for price in prices:
    if price > max: max = price
    sum += price

  avg  = float(sum/len(prices))
  fluc = (max - avg) / max * 100;
  print fluc
