package Cat;
use Moo;
use strict;
use warnings;
 
has name => (
  is => 'ro',
);
 
has mood => (
  is  => 'rw',
  default => 5
);
 
has hunger => (
  is  => 'rw',
  default => 0
);

has energy => (
    is => 'rw',
    default => 0
);

sub feed {
  my $self = shift;
  $self->{mood}++;
  $self->{hunger}--;
  print "Delicious!\n";
}

sub sleep {
    my $self = shift;
    $self->energy++;
    $self->hunger++;
}

sub play {
    my $self = shift;
    $self->mood++;
    $self->energy--;
}


1;
