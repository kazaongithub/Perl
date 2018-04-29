use strict;
use warnings;

$| = 1;

sub main {
	my $file =
'C:\Users\ksrikanth.CAVEONETWORKS\my_workspace\github\Perl\perltutorial\mymanjeeves.txt';

	open( INPUT, $file ) or die("Input file $file not found.\n");

	while ( my $line = <INPUT> ) {

		if ( $line =~ /(I..a.)/ ) {
			print "$1\n";
		}
	}
}

main();
