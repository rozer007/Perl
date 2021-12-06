use feature "say";

package pepcoder;

sub new {
    my$class= shift;
    my$self={
        name => shift,
        roll=> shift
    };
    bless $self,$class;
    return $self;
}

sub get_all{
    my($self)=@_;
    say $self->{name}," --> ",$self->{roll};
}

sub set_name{
    my($self,$name)=@_;
    $self->{name} = $name if defined($name);
    return $self->{name};
}
1;