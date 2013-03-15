#!/usr/bin/env perl

use v5.12; 

while (my $pass = <>) {

    chomp $pass;

    my $num_letter = $pass =~ tr/[a-zA-Z]{1}//;
    my $num_digits = $pass =~ tr/\d{1}//;
    
    my $result = ($num_letter < 4 or $num_digits < 2)
        ? 'INVALID'
        : 'VALID'
    ;
    say $result;
}
