use strict;
use warnings;
use diagnostics;

use feature "say";

my @arr=(1,2,3,"keooko",34);
print @arr,"\n";

@arr[1]="lp";
print @arr,"\n";

for my$i (@arr) { print $i;}
say"";

foreach my$i (@arr) {print $i;}
say"";

for(@arr)
{
    print $_; # when no variable is declared
}
say"";

say @arr[0,1];
say @arr[0..4];
say @arr[$#arr];  #last element $#arr is the last index
my $len=@arr; # give length
say $len;

my($a,$b,$c,$d,$e)=@arr;
print $a," - ",$b,"\n";

#array function
my @primes = (2, 3, 5, 7, 11, 13, 17);

# Pop the last value off an array
say "Popped Value ", pop @primes;
 
# Push puts one on the end and returns the length
say "Pushed Value ", push @primes, 17;
print join(", ", @primes), "\n";
 
# Return the first item with shift
say "First Item ", shift @primes;
 
# Add a value to the front and get the length
say "Unshifted Item ", unshift @primes, 2;
print join(", ", @primes), "\n";
 
# Splice out values array, index to start, length
# Returns those values
say "Remove Index 0 - 2 ", splice @primes, 0, 3;
print join(", ", @primes), "\n";
 
# Join can also join a list like this
print join " ", ('list', 'of', 'words', "\n");
 
# Split turns a string into an array
my $customers = "Sue Sally Paul";
my @cust_array = split / /, $customers;
print join(", ", @cust_array), "\n";
 
# Reverse reverses an array
@cust_array = reverse @cust_array;
print join(", ", @cust_array), "\n";
 
# Sort sorts an array
@cust_array = sort @cust_array;
print join(", ", @cust_array), "\n";
 
# Sort in reverse order
@cust_array = reverse sort @cust_array;
print join(", ", @cust_array), "\n";

#grep
my @odd=grep{$_%2}@primes;
print join(", ", @odd), "\n";

#map
my @mm=map{$_ * 23}@primes;
print join(", ", @mm), "\n";