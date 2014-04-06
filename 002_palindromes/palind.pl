#!/usr/bin/env perl

use common::sense;

my @words;
while (<>) {
    chomp;

    my @chars = split //, lc $_;
	my $half  = int(scalar @chars / 2) - 1;
	my $is_not_palind;
	for (0 .. $half) {
		next if $chars[$_] eq $chars[-1-$_];

		$is_not_palind = 1;
		last;
	}

   	push @words, $_ unless $is_not_palind;
}

for (sort @words) {

    say;
}
