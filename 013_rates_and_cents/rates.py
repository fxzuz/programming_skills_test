#!/usr/bin/python

usages = []
for num in range(0, 3):
  line = int(raw_input())
  usages.append(line)

for usage in usages:
  sum = 0

  a1 = usage - 300
  if a1 > 0:
    sum += 80 * a1
    usage -= a1

  a2 = usage - 100
  if a2 > 0:
    sum += 70 * a2
    usage -= a2

  sum += 60 * usage
  print sum 
