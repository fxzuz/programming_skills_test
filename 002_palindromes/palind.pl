#!/usr/bin/env perl

use common::sense;

my @words;
while (<>) {
    chomp;

    my @chars     = split //, lc $_;
    my @rev_chars = reverse @chars;

    push @words, $_ if @chars ~~ @rev_chars;
}

for (sort @words) {

    say;
}
