#!/usr/bin/env perl

use common::sense;
use Time::Local;
use POSIX qw(strftime);

my @days = qw(SUNDAY MONDAY TUESDAY WEDNESDAY THURSDAY FRIDAY SATURDAY);

while (<>) {

    chomp;
    my ($year, $month) = split '-', $_;
    
    my $time = timegm(0, 0, 0, 28, $month, $year - 1900);
    say strftime("%^A", localtime($time));
}
