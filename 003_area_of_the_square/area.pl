#!/usr/bin/env perl

use strict;

while (my $area = <>) {

    chomp $area;
    my $a = $area ** (1/3);

    my $s = ($a / 2 ) ** 2;    
    print $s."\n";
}
