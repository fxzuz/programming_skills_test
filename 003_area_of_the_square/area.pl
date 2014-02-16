#!/usr/bin/env perl

use common::sense;

while (<>) {

    chomp;
    my $a = ($_ ** (1/3));
    say (($a / 2 ) ** 2);
}
