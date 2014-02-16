#!/usr/bin/env perl

use common::sense;

my %racers;
while (<>) {

    chomp;
    my ($racer, $position) = split '-', $_;
    $racers{$position} = $racer;
}

for (sort keys %racers) {

    say "$racers{$_}-$_";
}
