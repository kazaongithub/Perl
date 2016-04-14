package BinarySearch;

use strict;
use warnings;

# $index = binary_search( \@array, $word )
#  @array is a list of lowercase strings in alphabetical order.
#  $word is the target word that might be in the list.
#  binary_search() returns the array index such that $array[$index]
#  is word.

sub binary_search
{
    my ($array, $word) = @_;
    my ($low, $high) = ( 0, @$array - 1 );

    # While the window is open
    while ( $low <= $high ) {
        # Try the middle element
        my $try = int( ($low+$high) /2 );
        # Raise bottom
        $low = $try+1, next if $array->[$try] lt $word;
        # Lower top
        $high = $try-1, next if $array->[$try] gt $word;

        # We've found the word!
        return $try;
    }
    # The word isn't there.
    return;
}

1;
