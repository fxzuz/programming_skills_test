#!/usr/bin/env perl

use strict;

my %racers;
while (my $str = <>) {

    chomp $str;
    my ($racer, $position) = split '-', $str;
    $racers{$position} = $racer;
}

for my $position (sort keys %racers) {

    printf "%s-%s\n", $racers{$position}, $position;
}
