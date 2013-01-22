#!/usr/bin/python

import sys

words = []

for line in sys.stdin:

  word = line.rstrip().lower()
  half = len(word) / 2

  is_palindrom = 1
  for num in range(1, half):

    first = num - 1
    last = -1 * num  

    if word[first] != word[last]:
      is_palindrom = 0
      break
  
  if is_palindrom: words.append(word)

for word in sorted(words):
  print word
