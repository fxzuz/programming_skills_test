#!/usr/bin/env perl

use common::sense;

my %students;
while (<>) {

    chomp;
    my ($id, $score) = split '-', $_;
    $students{$id} = $score if $score > $students{$id};
}

for (sort {$b <=> $a} keys %students) {

    say "$_-$students{$_}";
}
