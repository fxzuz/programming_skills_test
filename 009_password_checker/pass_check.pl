#!/usr/bin/env perl

use strict;

while (my $str = <>) {

    chomp $str;
    printf "%s\n", is_password_valid($str); 
}

sub is_password_valid {
    my $pass = shift;

    my $num_letter = $pass =~ tr/[a-zA-Z]{1}//;
    my $num_digits = $pass =~ tr/\d{1}//;
    
    return 'INVALID' if $num_letter < 4 or $num_digits < 2;
    return 'VALID'; 
}
