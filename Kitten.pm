package Kitten;
use Moo;

extends 'Cat';

has playing => (is => 'rw', default => 0);

sub play {
    my $self = shift;
    $self->{playing} = 1;
    $self->{energy}--;
    $self->{hunger}++;
    $self->{mood}++;
}

1;