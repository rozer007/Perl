my $n=int(<STDIN>);
my $m=int(<STDIN>);

my @arr;

for (my $i=0;$i<$n;$i++) 
{
    @arr[$i]=();
    for (my $j=0;$j<$m;$j++) 
    {
        my $num=int(<STDIN>);
        $arr[$i][$j]=$num;
    }
}

my $minr = 0;
my $minc = 0;
my $maxr = $n - 1;
my $maxc = $m - 1;
my $cnt = 0;
my $tne  = $n * $m;
while($cnt < $tne){
    for(my $i = $minr; $i <= $maxr && $cnt < $tne; $i++){
    print ($arr[$i][$minc],"\n");
    $cnt++;
    }
    $minc++;

    for(my $j = $minc; $j <= $maxc && $cnt < $tne; $j++){
    print ($arr[$maxr][$j],"\n");
    $cnt++;
    }
    $maxr--;

    for(my $i = $maxr; $i >= $minr && $cnt < $tne; $i--){
    print($arr[$i][$maxc],"\n");
    $cnt++;
    }
    $maxc--;

    for(my $j = $maxc; $j >= $minc && $cnt < $tne; $j--){
    print($arr[$minr][$j],"\n");
    $cnt++;
    }
    $minr++;

}
                        