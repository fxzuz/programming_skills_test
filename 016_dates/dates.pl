#!/usr/bin/env perl

use v5.12;
use Time::Local;
use POSIX qw(strftime);

my @days = qw(SUNDAY MONDAY TUESDAY WEDNESDAY THURSDAY FRIDAY SATURDAY);

while (my $str = <>) {

    chomp $str;
    my ($year, $month) = split '-', $str;
    
    my $time = timegm(0, 0, 0, 28, $month, $year - 1900);
    say strftime("%^A", localtime($time));
}
