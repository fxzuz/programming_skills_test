#!/usr/bin/env perl

use common::sense;

for (258..393) {
	say if $_ % 10 != 5;
}
