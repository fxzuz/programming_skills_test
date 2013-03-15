#!/usr/bin/env perl

use v5.12;

my @converts;
while (my $line = <>) {

    chomp $line;
    my @colors = split ',', $line;

    for my $color (@colors) {
   
        my @values = split '-', $color;
        my $is_valid = 1;

        for my $value (@values) {

            $is_valid = 0 if $value > 255;
        }

        my @convert_values = map { sprintf "%02x", $_ } @values;
        my $result = $is_valid
                   ? sprintf "#%s", join '', @convert_values
                   : 'INVALID';
        push @converts, uc $result;
    }
}

$" = ',';
say "@converts";
