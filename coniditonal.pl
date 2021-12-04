use strict;
use warnings;
use diagnostics;

use feature "say";
# Perl considers undef, 0, 0.0, "", and "0" to be false
# ==, !=, <, <=, >, >=
# Boolean Operators: !, &&, ||
 
# If, else if, else statements
my $age = 80;
my $is_not_intoxicated = 1;
my $age_last_exam = 16;
 
# Simple if example
if($age < 16){
  say "You can't drive";
} elsif(!$is_not_intoxicated) {
  say "You can't drive";
} else {
  say "You can drive";
}
 
# Complex review of everything
if(($age >= 1) && ($age < 16)){
  say "You can't Drive";
} elsif(!$is_not_intoxicated){
  say "You can't drive";
} elsif(($age >= 80) && (($age > 100) || (($age - $age_last_exam) > 5))){
  say "You can't drive";
} else {
  say "You can drive";
}
 
# Comparison operators for strings
# eq, ne, lt, le, gt, ge
if('a' eq 'b'){
  say "a equals b";
} else {
  say "a doesn't equal b";
}
 
# unless is the opposite of if
unless(!$is_not_intoxicated){
  say "Get Sober";
}

# Ternary operator returns different values depending
# on a condition
say (($age > 18) ? "Can Vote" : "Can't Vote");


# Given When Perl Switch statement
my $age_old = 18;
given ($age_old) {
  when($_ > 16) {
    say "Drive";
 
    # Will continue with the next cases
    continue;
  }
  when($_ > 17) {say "Go Vote";}
  default {say "Nothing Special";}
}