#!/usr/bin/perl 

#
# Program to find empty directries
#
# Uses CPAN File::Util module.
# % perl -MCPAN -e 'install File::Util'
#

use strict;
use warnings;
use File::Util;

my $path = ".";

my $fObj = File::Util->new();
my @all_dirs = $fObj->list_dir(
    $path => {
        recurse   => 1,
        dirs_only => 1,
    }
);

my @empty_dirs = grep { not $fObj->list_dir($_) } @all_dirs;

print "Empty directries\n";
print "################\n";
print join("\n", @empty_dirs) . "\n";

