#!/usr/bin/env perl

use strict;

while (my $num = <>) {

    chomp $num;
    my $square = $num ** 2;

    if ($square > 9) {

        my ($first, $last) = (split //, $square)[0, -1];
        my $sum = $first + $last; 
        print $sum."\n"; 
    }
    else {

        print $square."\n"; 
    }
}
