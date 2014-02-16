#!/usr/bin/env perl

use common::sense;

while (<>) {
	chomp;

	my $status = 'INVALID';
	if (my @parts = $_ =~ m/^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})$/i) {
		$status = 'VALID';
		for (@parts) {
			unless ($_ >= 0 && $_ <= 255) {
				$status = 'INVALID';
				last;
			}
		}
	}

	say $status;
}
