#!/usr/bin/env perl

use common::sense;

while (<>) {
	chomp;

	my $status = 'INVALID';
	if (my ($mm, $dd, $yyyy) = $_ =~ m/^(\d{2})-(\d{2})-(\d{4})$/) {
		if ($mm >= 1 && $mm <= 12 && $dd >= 1 && $dd <= 31) {
			$status = 'VALID'
		}
	}
	
	say $status;
}
