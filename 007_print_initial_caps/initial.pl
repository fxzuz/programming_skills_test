#!/usr/bin/env perl

use strict;

while (my $str = <>) {

    chomp $str;
    my @words = split / /, $str;

    for my $word (@words) {

        printf "%s\n", $word if $word =~ m/^[A-Z]{1}/; 
    }
}
