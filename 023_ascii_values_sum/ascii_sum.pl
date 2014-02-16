#!/usr/bin/env perl

use common::sense;
use Data::Dumper;

my $input = <>;
my @ascii = split ',', $input;

my $sum1; 
for (split '', $ascii[0]) {
	$sum1 += ord $_;
}

my $sum2; 
for (split '', $ascii[1]) {
	$sum2 += ord $_;
}

say $sum1-$sum2;
