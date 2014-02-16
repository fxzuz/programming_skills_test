#!/usr/bin/env perl

use common::sense;

while (<>) {

    chomp $_;
    my ($num_letter, $num_digits, $num_spec, $num_space);
    my $length = length($_);

    my @letters = split '', $_;
    for (@letters) {

        given($_) {
            when (m/[A-Z]{1}/)  { $num_letter++ }
            when (m/\d{1}/)     { $num_digits++ }
            when (m/[@#*=]{1}/) { $num_spec++   }
            when (m/\s/)        { $num_space++  }
        }
    }

    my $result = (!$num_letter || !$num_digits || !$num_spec || $num_space || $length < 5 || $length > 10 )
               ? 'FAIL'
               : 'PASS'
    ;

    say $result;
}
