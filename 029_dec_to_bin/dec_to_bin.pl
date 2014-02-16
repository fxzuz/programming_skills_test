#!/usr/bin/env perl

use common::sense;

while (<>) {
	chomp;
	printf "%0.16b\n", $_;
}
