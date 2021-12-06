package student;
use pepcoder;
use feature"say";
our @ISA = qw(pepcoder);

sub get_all{
    my ($self)=@_;
    say "$self->{name}";
}