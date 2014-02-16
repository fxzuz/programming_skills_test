#!/usr/bin/env perl

use common::sense;

while (<>) {
	chomp;
	
	for my $num (1 .. $_) {
	
		# count spaces	
		print " " x ($_-$num);
		for (1 .. $num) {
			print "$num ";
		}
		print "\n";
	}
}
