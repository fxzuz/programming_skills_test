#!/usr/bin/env perl

use v5.12;

while (my $area = <>) {

    chomp $area;
    my $a = $area ** (1/3);

    my $s = ($a / 2 ) ** 2;    
    say $s;
}
