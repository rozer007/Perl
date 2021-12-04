use strict;
use warnings;
use diagnostics;

use feature "say";

my $i=1;
my $count=0;
my $n=int(<STDIN>);
while($i<=$n)
{
    if($n%$i==0)
    {
        $count++;
    }
    $i++;
}

if($count==2)
{say "Is prime";}
else
{say "Is not prime";}