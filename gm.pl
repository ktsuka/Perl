#!/usr/bin/perl

use strict;
use warnings;
my @input = qw(1 2 4 8 16 32 64);
my @a = grep {
    my $num = $_;
    my @digits = split //, $num;
    my $sum;
    $sum += $_ for @digits;
    $sum % 2;
} @input;
map { print $_ ,"\n";} @a;
