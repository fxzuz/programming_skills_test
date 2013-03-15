#!/usr/bin/env python

import sys

u = 36 * 1000 / 3600
a = 5

for line in sys.stdin:

    time = int(line)
    dist = u * time + (a * time * time)/2
    print dist
