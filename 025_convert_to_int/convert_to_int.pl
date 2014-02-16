#!/usr/bin/env perl

use common::sense;

while (<>) {
	chomp;

	say $_ =~ m/^\d+$/
		? int($_)
		: 'INVALID'
	; 
}
