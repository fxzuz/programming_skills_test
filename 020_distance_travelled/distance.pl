#!/usr/bin/env perl

use common::sense;

my $u = 36 * 1000 / 3600;
my $a = 5;

while (<>) {

    chomp;
    say $u * $_ + ($a * $_ ** 2)/2;   
}
