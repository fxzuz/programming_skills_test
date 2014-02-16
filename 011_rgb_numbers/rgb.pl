#!/usr/bin/env perl

use common::sense;

my @converts;
while (<>) {

    chomp;
    my @colors = split ',', $_;

    for my $color (@colors) {
   
        my @values = split '-', $color;
        my $is_valid = 1;

        for my $value (@values) {

            $is_valid = 0 if $value > 255;
        }

        my $result = $is_valid
                   ? sprintf "#%s", join '', map { sprintf "%02x", $_ } @values
                   : 'INVALID';
        push @converts, uc $result;
    }
}

say join ',', @converts;
