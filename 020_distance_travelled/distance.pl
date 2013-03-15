#!/usr/bin/env perl

use v5.12;

my $u = 36 * 1000 / 3600;
my $a = 5;

while (my $time = <>) {

    chomp $time;
    my $dist = $u * $time + ($a * $time * $time)/2;   
    say $dist;
}
