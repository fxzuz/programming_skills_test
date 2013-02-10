#!/usr/bin/env perl

use strict;

for my $num (1000 .. 1200) {

    next if not $num % 7 == 0;
    next if $num % 5 == 0;

    printf "%s\n", $num;
}
