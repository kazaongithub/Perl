#!/usr/bin/perl 

##
## Program to find the odd sum digits in an array
##
## Solution:
##   Adhoc solution
##
## - Each element is read from array
## - Each element is split into digits and stored into array
## - All digits are summed and checked
##

use strict;
use warnings;

sub main()
{
    my (@array, @odd_sum_digits_array);

    ## Get the size from user
    print "Enter the size of array: ";
    my $array_size = <STDIN>;

    chomp ($array_size);
    ## Initialize range
    my $range = 2 * $array_size;

    ## Generate random numbers and store into array
    foreach (1..$array_size) {
        push (@array, int(rand($range)) + 1);
    }

    #print join(", ", @array) . "\n";

    my $now = time;
    foreach my $element (@array) {
        ## Split into individual digits
        my @digits = split //, $element;

        ## Sum up all the digits
        my $sum = 0;
        foreach (@digits) {
           $sum = $sum + $_;
        }

        ## Check the sum and push into array
        if ($sum % 2) {
            push (@odd_sum_digits_array, $element);
        }
    }
    $now = time - $now;

    print("Array Size - " . $array_size . "\t" . "Time - " . $now . " Seconds" . "\n");
    #print join(", ", @odd_sum_digits_array) . "\n";
}

&main();
