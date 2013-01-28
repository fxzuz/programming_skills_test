#!/usr/bin/python

import sys

racers = {}
for line in sys.stdin:

  racer, position = line.rstrip().split("-")
  racers[position] = racer

for key in sorted(racers.iterkeys()):
    print "%s-%s" % (racers[key], key)
