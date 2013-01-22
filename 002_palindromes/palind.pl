#!/usr/bin/env perl

use strict;

my @words;
while (my $word = <>) {

    chomp $word;
    $word       = lc $word;
    my $half    = length($word) / 2;
    my @letters = split //, $word;
    
    my $is_palindrom = 1;
    for my $num (1 .. $half) {

        my $first = $num - 1;
        my $last  = $num * -1;
        
        if ($letters[$first] ne $letters[$last]) {

            $is_palindrom = 0;
            last;
        }
    }

    push @words, $word if $is_palindrom;
}

for my $word (sort @words) {

    printf("%s\n", $word);
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


