#!/usr/bin/env perl

use common::sense;

my ($total, $current);
while (my $num = <>) {

    chomp $num;

    if ($. == 1) {

        $total = $num;
        next;
    }

    # process only total_num records
    last if ++$current > $total;

    my $sum;
    for (1 .. $num - 1) {

       $sum += $_ if $num % $_ == 0; 
    }
    say $sum;
}
