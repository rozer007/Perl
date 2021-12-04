use strict;
use warnings;
use diagnostics;

use feature "say";

my %hash=("k"=>12,
"l"=>11,
"p"=>23);

# print $hash{"l"};
$hash{"jj"}=11212;

while(my($k,$v)=each(%hash)){print "$k->$v"};
say("");
# slicing

my @arr=@hash{"k","l"};
print @arr;
say "";

my@hasharr=%hash;
foreach my$i (@hasharr) {print $i," ";}
say"";

delete $hash{"jj"};
while(my($k,$v)=each(%hash)){print "$k->$v"};
say("");

say exists $hash{"l"};

say keys %hash;

for my $k (keys %hash) 
{
    print $k," ";
}
say "";