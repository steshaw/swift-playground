#!/usr/bin/perl
use warnings;
use strict;

my @names = ("John", undef, "Jack", "Jill", undef, "Bill");
#my @names = ("John", "Jack", "Jill", "Bill");
for my $optName (@names){
	printf("Hello0 $optName\n") if defined($optName);
    printf("Hello1 %s\n", defined($optName) ? $optName : "None");
    printf("Hello2 %s\n", $optName || "None");
}
