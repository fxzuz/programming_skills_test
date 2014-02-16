#!/usr/bin/env perl

use common::sense;

while (<>) {

    chomp;
    my @words = split / /, $_;
    for (@words) {

        say if m/^[A-Z]{1}/;
    }
}
