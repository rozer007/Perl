# use strict;
# # use warnings;
# # use diagnostics;

# use feature "say";


my $n=int(<STDIN>);
my @arr;

for(my $i=0; $i<$n;$i++) {
    @arr[$i]=int(<STDIN>);
}

my $max=-1;

for(my $i=0; $i<$n;$i++) {
    if(@arr[$i]>=$max) 
    {
        $max=@arr[$i];
    }
}

for(my $i=0;$i<$max;$i++)
{
    for(@arr)
    {
        if($_>=$max-$i)
        {
            print "*\t";
        }
        else
        {
            print"\t";
        }
    }
    print"\n";
}