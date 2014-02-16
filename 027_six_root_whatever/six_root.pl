#!/usr/bin/env perl

use common::sense;

for my $num (2..20000) {

	my $ok = 1;
	for my $root (6, 3, 2) {
		my $res = int($num ** (1/$root) + 0.5);
		unless ($res ** $root == $num) {
			$ok = 0;
			last;
		}
	} 

	say $num if $ok;
}
