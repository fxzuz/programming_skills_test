#!/usr/bin/env python

import sys

students = {} 
for line in sys.stdin:

    id, score = line.rstrip().split('-')
    if id not in students or students[id] < score:
        students[id] = score

for id in sorted(students, reverse=True):
    print "%s %s" % (id, students[id])
