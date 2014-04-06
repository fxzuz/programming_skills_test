#!/usr/bin/env perl

use common::sense;

while (<>) {

	chomp $_;
	my $len = length($_);

	my $is_letter = $_ =~ m/[A-Z]{1}/;
	my $is_digit  = $_ =~ m/\d{1}/;
	my $is_spec   = $_ =~ m/[@#*=]{1}/;
	my $is_space  = $_ =~ m/\s/;

	say (
		$is_letter && $is_digit && $is_spec && !$is_space && $len >= 5 && $len <= 10
			? 'PASS'
			: 'FAIL'
	);
}
