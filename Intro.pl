use strict;
use warnings;
use diagnostics;

use feature "say";
use feature "switch";

print"Hello world \n";

my $name ="popo";
print '$name \n'; #single quote for print as same no escape sequence or variable
print "$name \n";

$name = qq{Hello 
world "bye" \n}; #peint exactly the same as statement

print "$name";

my ($name1,$roll)=("rox",2122);

print "$name1";


my $multi = <<END;
this is a multi
string vey
lon
END

say $multi;

print "multi
wsds
dsdsd \n";

print 'dfd
dfdf
df';

printf("hello %s",$name1 );