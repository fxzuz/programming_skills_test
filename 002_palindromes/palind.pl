#!/usr/bin/env perl

use v5.12;

my @words;
while (my $word = lc <>) {

    chomp $word;
    my @letters     = split //, $word;
    my @letters_rev = reverse @letters;

    push @words, $word if @letters ~~ @letters_rev;
}

for (sort @words) {

    say;
}

__DATA__
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


