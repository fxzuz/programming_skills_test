#!/usr/bin/env perl

use strict;
use Time::Local;
use POSIX qw(strftime);

my @days = qw(SUNDAY MONDAY TUESDAY WEDNESDAY THURSDAY FRIDAY SATURDAY);

while (my $str = <>) {

    chomp $str;
    my ($year, $month) = split '-', $str;
    
    my $time = timegm(0, 0, 0, 28, $month, $year - 1900);
    print strftime("%^A\n", localtime($time));
}
