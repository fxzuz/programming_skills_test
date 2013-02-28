#!/usr/bin/env perl

use v5.12;

while (my $pass = <>) {

    chomp $pass;
    my ($num_letter, $num_digits, $num_spec, $num_space);
    my $length = length($pass);

    my @letters = split '', $pass;
    for (@letters) {

        given($_) {
            when (m/[A-Z]{1}/)  { $num_letter++ }
            when (m/\d{1}/)     { $num_digits++ }
            when (m/[@#*=]{1}/) { $num_spec++   }
            when (m/\s/)        { $num_space++  }
        }
    }

    my $result = (!$num_letter or !$num_digits or !$num_spec or $num_space or $length < 5 or $length > 10 )
               ? 'FAIL'
               : 'PASS'
    ;

    say $result;
}
