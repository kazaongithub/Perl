use strict;
use warnings;

# Turn of output bufferening
$| = 1;

sub main {

	my @files = (
		'C:\Users\ksrikanth.CAVEONETWORKS\my_workspace\github\Perl\perltutorial\main.pl',
		'C:\Users\ksrikanth.CAVEONETWORKS\my_workspace\github\Perl\perltutorial\.project',
		'C:\Users\ksrikanth.CAVEONETWORKS\my_workspace\github\Perl\perltutorial\missing.txt',
	);

	foreach my $file (@files) {

		if ( -f $file ) {
			print "Found file: $file\n";
		}
		else {
			print "File not found: $file\n";
		}
	}
}

main();
