my $inp = <STDIN>;
my @ans = gss($inp);
print join(", ", @ans);

sub gss{
    my $arr=@_;
    if(length$arr==0)
    {
        my @base=();
        push @base,"";
        return @base;
    }  

    my $ch = substr $arr, 0, 1;
    my $ros = substr $arr, 1, (length $arr) - 1;  

    my @rec_res = gss($ros);
    my @my_res;
    for $val (@rec_res)
    {
        push @my_res, $val;
    }

    for $val (@rec_res)
    {
        my $str=$ch.$val;
        push @my_res,$str;
    }
    return @my_res;
}

