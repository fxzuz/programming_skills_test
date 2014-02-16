#!/usr/bin/env perl

use common::sense;

while (<>) {

    chomp;
    my $square = $_ ** 2;

    if ($square > 9) {

        my ($first, $last) = (split //, $square)[0, -1];
        $square = $first + $last; 
    }

    say $square;
}
