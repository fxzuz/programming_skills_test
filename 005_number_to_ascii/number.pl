#!/usr/bin/env perl

use common::sense;

my ($total, $num);
while (<>) {

    chomp;
    if ($. == 1) {

        $total = $_;
        next;
    }

    # process only total_num records
    last if ++$num > $total;
    say chr($_);
}
