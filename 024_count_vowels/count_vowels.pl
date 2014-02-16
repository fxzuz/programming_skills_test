#!/usr/bin/env perl

use common::sense;

while (<>) {

	say $_ =~ s/[aeiou]{1}//gi;
}
