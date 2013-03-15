#!/usr/bin/env perl

use v5.12;

while (my $str = <>) {

    chomp $str;

    my $dist = 0;
    my $hop  = 1;

    for (1 .. $str) {

        if ($i == 1) {

            $dist += 20;
            $hop  = 2;
        }
        elsif ($i == 2) {
        
            $dist += 10;
            $hop  = 3;
        }
        elsif ($i == 3) {

            $dist += 5;
            $hop  = 1;
        }
    }

    say $dist;
}
