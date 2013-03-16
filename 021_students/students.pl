#!/usr/bin/env perl

use v5.12;

my %students;
while (my $str = <>) {

    chomp $str;
    my ($id, $score) = split '-', $str;
   
    $students{$id} = $score if $score > $students{$id};
}

for (sort {$b <=> $a} keys %students) {

    say "$_-$students{$_}";
}
