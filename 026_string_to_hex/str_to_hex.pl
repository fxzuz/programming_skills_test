#!/usr/bin/env perl

use common::sense;

while (<>) {
	chomp;
	say map { sprintf "%X", ord($_) } split '', $_;
}
