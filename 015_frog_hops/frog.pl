#!/usr/bin/env perl

use common::sense;

while (<>) {

    chomp;

    my $dist = 0;
    my $hop  = 1;

    for (1 .. $_) {

        if ($hop == 1) {

            $dist += 20;
            $hop  = 2;
        }
        elsif ($hop == 2) {
        
            $dist += 10;
            $hop  = 3;
        }
        elsif ($hop == 3) {

            $dist += 5;
            $hop  = 1;
        }
    }

    say $dist;
}
