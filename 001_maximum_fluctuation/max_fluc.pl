#!/usr/bin/env perl

use common::sense;

while (<>) {
    chomp;
    my @prices = split ',', $_;
	my ($avg, $max_price);

    for my $price (@prices) {

        $max_price = $price if $price > $max_price;
        $avg      += $price;
    }

    $avg     = int($avg / @prices);
    my $fluc = ($max_price - $avg) / $max_price * 100;

    say $fluc;
}
