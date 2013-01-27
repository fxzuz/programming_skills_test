#!/usr/bin/python

import sys

total_num = cur_num = 0
for i, line in enumerate(sys.stdin):

  num = int(line)

  if i == 0:
    total_num = num
    continue
  else:
    cur_num += 1

  if cur_num > total_num:
    break 

  print chr(num)
