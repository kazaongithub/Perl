use strict;
use warnings;

$| = 1;

sub main {

	my $input =
'C:\Users\ksrikanth.CAVEONETWORKS\my_workspace\github\Perl\perltutorial\mymanjeeves.txt';
	open( INPUT, $input )
	  or die("Input file $input not found.\n");

	my $output = 'output.txt';
	open( OUTPUT, '>' . $output )
	  or die "Can't create $output.\n";

	while ( my $line = <INPUT> ) {

		$line =~ s/you/YOU/ig;

		if ( $line =~ /\begg\b/ ) {
			print OUTPUT $line;
		}
	}

	close(INPUT);
	close(OUTPUT);
}

main();
