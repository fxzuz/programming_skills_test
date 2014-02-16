#!/usr/bin/env perl

use common::sense;

my ($total, $current);
while (<>) {

    chomp;
    if ($. == 1) {

        $total = $_;
        next;
    }

    # process only total records
    last if ++$current > $total;

    my $sum;
    for (1 .. $_) {

        $sum += $_ ** 3;
    }
    say $sum;
}
