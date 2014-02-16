#!/usr/bin/env perl

use common::sense;

my $str1 = <>;
my $str2 = <>;

my @numbers1 = split ',', $str1;
my @numbers2 = split ',', $str2;

my @sum;
for (0 .. $#numbers1) {

    push @sum, ($numbers1[$_] + $numbers2[$_]);
}

say join ',', @sum;
