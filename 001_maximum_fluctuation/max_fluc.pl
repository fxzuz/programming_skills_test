#!/usr/env/bin perl

use strict;

while (my $line = <>) {

    chomp $line;

    my @prices    = split ',', $line;
    my $max_price = 0;
    my $avg       = 0;

    for my $price (@prices) {

        $max_price = $price if $price > $max_price;
        $avg      += $price;
    }

    $avg     = int($avg / scalar @prices);
    my $fluc = ($max_price - $avg) / $max_price * 100;
    print $fluc."\n";
}
