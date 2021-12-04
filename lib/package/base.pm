package base;

use strict;
use warnings;

sub new {
    my $class = shift;
    my $self={
        name =>self;
        owner => $class;
    }
    bless $self,$class;
    return self;
}

sub get_name{
    my($self)=@_;
    return $self->{name};
}

sub set_name{
    my($self,$name)=@_;
    $self->{name} = $name if defined($name);
    return $self->{name};
}