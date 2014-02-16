#!/usr/bin/env perl

use common::sense;

while (<>) {

    chomp;

    my $num_letter = $_ =~ tr/[a-zA-Z]{1}//;
    my $num_digits = $_ =~ tr/\d{1}//;
    
    say (
		$num_letter < 4 || $num_digits < 2
        	? 'INVALID'
        	: 'VALID'
	);
}
