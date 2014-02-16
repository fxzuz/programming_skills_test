#!/usr/bin/env perl

use common::sense;

my $first_line  = <>;
my $second_line = <>;
chomp $first_line;
chomp $second_line;

my @first_emp  = split ',', $first_line;
my @second_emp = split ',', $second_line;

my %result;
my $number = 0;

for (@first_emp, @second_emp) {

    $number++ if ++$result{$_} > 1;
}

say $number;
