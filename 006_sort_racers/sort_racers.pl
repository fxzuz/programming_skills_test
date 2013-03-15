#!/usr/bin/env perl

use v5.12; 

my %racers;
while (my $str = <>) {

    chomp $str;
    my ($racer, $position) = split '-', $str;
    $racers{$position} = $racer;
}

for (sort keys %racers) {

    say $racers{$_}, '-', $_;
}
