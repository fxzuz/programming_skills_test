#!/usr/bin/env perl

use v5.12;

while (my $usage = <>) {

    chomp $usage;
    my $sum = 0;

    my $a1 = $usage - 300;
    if ($a1 > 0) {

        $sum += 80 * $a1;
        $usage -= $a1;
    }

    my $a2 = $usage - 100;
    if ($a2 > 0) {

        $sum += 70 * $a2;
        $usage -= $a2;
    }

    $sum += 60 * $usage;
    say $sum;
}
