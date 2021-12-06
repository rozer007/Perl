use strict;
use warnings;
use diagnostics;

use feature "say";

my $i=2;
my $flag=1;
my $n=int(<STDIN>);
while($i*$i<=$n)
{
    if($n%$i==0)
    {
        $flag=0;
        last;
    }
    $i++;
}

if($flag==1)
{
    say "Is prime";
}
else
{
    say "Is not prime";
}