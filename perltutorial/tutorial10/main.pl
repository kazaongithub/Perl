use strict;
use warnings;

$| = 1;

sub main {

	# \d digit
	# \s space
	# \S non-space
	# \w alphanumeric

	my $text = 'I am 117 years old tomorrow.';

	if ( $text =~ /(\d+)/ ) {
		print "Matched: '$1'\n";
	}
}

main();
