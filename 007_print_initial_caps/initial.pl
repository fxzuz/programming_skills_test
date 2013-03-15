#!/usr/bin/env perl

use v5.12;

while (my $str = <>) {

    chomp $str;
    my @words = split / /, $str;

    for (@words) {

        say if m/^[A-Z]{1}/;
    }
}
