#!/usr/bin/env perl

use v5.12;

while (my $num = <>) {

    chomp $num;
    my $square = $num ** 2;

    if ($square > 9) {

        my ($first, $last) = (split //, $square)[0, -1];
        my $sum = $first + $last; 
        say $sum;
    }
    else {

        say $square;
    }
}
