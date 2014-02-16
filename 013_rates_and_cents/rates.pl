#!/usr/bin/env perl

use common::sense;

while (<>) {

    chomp;
    my $sum = 0;

    my $a1 = $_ - 300;
    if ($a1 > 0) {

        $sum += 80 * $a1;
        $_ -= $a1;
    }

    my $a2 = $_ - 100;
    if ($a2 > 0) {

        $sum += 70 * $a2;
        $_ -= $a2;
    }

    $sum += 60 * $_;
    say $sum;
}
