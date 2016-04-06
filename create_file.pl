#!/usr/bin/perl
#
# Program to create a file with specific size in bytes
# Using sys calls
#

use strict;
use warnings;
use Fcntl;

print "Enter the SIZE of a file in BYTES\n";
my $file = <STDIN>;
chomp($file);

print "Enter the location of a file\n";
my $loc = <STDIN>;
chomp($loc);

my $new = "Hai this is sample file\n";
$new .=  ' ' x ($file - length($new));

sysopen(FILEIN, $loc, O_CREAT|O_WRONLY);
syswrite(FILEIN, $new);
close(FILEIN);
