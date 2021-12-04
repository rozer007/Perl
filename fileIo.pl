use strict;
use warnings;
use diagnostics;

use feature "say";

my $file="lolo.txt";

#>wrtting
# open(my $fh, ">", $file)
#     or die "can't open file $_";

# print $fh "Hello:world:bye\n";
# print $fh "Hello1:world2:bye3\n";
# print $fh "Hello3:world2:bye1\n";

# close($fh)
# or die "can't close file $_";

#reading

open(my $fh, "<", $file)or die "can't open file $_";

while (my $line = <$fh>)
{
    chomp $line;
    my($a, $b,$c) = split/:/, $line;
    say "$a-$b-$c";
}
close($fh) or die "can't close file $_'";

#appending
open(my $fh, ">>", $file)or die "can't open file $_";
print $fh "Hello31:world23:bye132\n";
print $fh "Hello32:world24:bye112\n";
close($fh) or die "can't close file $_'";

#reading
open(my $fh, "<", $file)or die "can't open file $_";

while (my $line = <$fh>)
{
    chomp $line;
    my($a, $b,$c) = split/:/, $line;
    say "$a-$b-$c";
}
close($fh) or die "can't close file $_'";

