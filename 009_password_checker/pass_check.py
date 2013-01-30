#!/usr/bin/python

import sys
import re

for line in sys.stdin:
   num_digit = len(re.findall("\d{1}", line))
   num_letters = len(re.findall("[a-zA-Z]{1}", line))
   
   if num_digit < 2 or num_letters < 4:
     print "INVALID"
   else:
     print "VALID"
