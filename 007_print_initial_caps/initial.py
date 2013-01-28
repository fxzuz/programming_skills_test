#!/usr/bin/python

import re
import sys

racers = {}
for line in sys.stdin:

  words = line.strip().split(" ")
  for word in words:
    match = re.match('^[A-Z]{1}', word)
    if match:
      print word
