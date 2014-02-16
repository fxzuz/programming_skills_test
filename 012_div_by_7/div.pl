#!/usr/bin/env perl

use common::sense;

for (1000 .. 1200) {

    next if not $_ % 7 == 0;
    next if $_ % 5 == 0;

    say $_;
}
