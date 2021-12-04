use strict;
use warnings;
use diagnostics;

use feature "say";

sub random
{
    my($a,$b,$c) = @_;
    $a||=0;
    $b||=0;
    $c||=0;
    return ($a>$b) ? (($a>$c)?$a:$b):(($b>$c)?$b:$c);
}

my $m=random(1,2,3);
say $m;

#multi arguemnst

sub sum_many {
  my $sum = 0;
  foreach my $val (@_){
    $sum += $val;
  }
  return $sum;
}
 
say "Sum : ", sum_many(1,2,3,4,5);

#state

# sub increment {
#     state $execute_total = 0;
#     $execute_total++;
#   say "Executed $execute_total times";
# }
 
# increment();
# increment();

# You can return multiple values
sub double_array {
  my @num_array = @_;
  $_ *= 2 for @num_array;
  $_ *= 2 foreach @num_array;
  return @num_array;
}
 
my @rand_array = (1,2,3,4,5);
 
print join(", ", double_array(@rand_array)), "\n";

# Recursive Subroutine
sub factorial {
  my ($num) = @_;
  return 0 if $num <= 0;
  return 1 if $num == 1;
  return $num * factorial($num - 1);
}
 
say "Factorial 4 = ", factorial(4);