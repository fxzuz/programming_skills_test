#!/usr/bin/env perl

use v5.12;

my ($total_num, $cur_num);
while (my $num = <>) {

    chomp $num;

    if ($. == 1) {

        $total_num = $num;
        next;
    }
    else {

        $cur_num++;
    }

    # process only total_num records
    last if $cur_num > $total_num;

    my $sum;
    for (1 .. $num - 1) {

       $sum += $_ if $num % $_ == 0; 
    }
    say $sum;
}
