#!/usr/bin/env perl

use strict;
use warnings;

sub MAIN
{
    my $delm = qr/\s+/;
    my $max = 0;
    my @lines;
    my $dig = 80;
    while (my $line = <>) {
        my ($c) = split($delm, $line);
        if ($max < $c) {
            $max = $c;
        }
        push(@lines, [$c, $line]);
    }
    my $k = 80 / $max;
    foreach my $c_line (@lines) {
        my ($c, $line) = @$c_line;
        chomp($line);
        printf("%s %s\n", $line, '*' x int($c * $k));
    }
    return 0;
}

exit MAIN();
