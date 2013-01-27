#!/usr/bin/env perl

use strict;

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
    printf "%s\n", chr($num);
}
