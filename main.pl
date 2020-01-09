#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;
use Cat;
use Kitten;

my @all_cats;

push( @all_cats, 
      Cat->new( name => 'Sylvester', hunger => 5, energy => 5 ), 
      Cat->new( name => 'Felix', hunger => 6, energy => 4 )
    );

print "This is a demonstration of basic OOP principles in Perl.\n";
print "First we will prove that we can declare 2 distinct objects using the same Class.\n";
print Dumper(@all_cats);

=comment
$VAR1 = bless( {
                 'energy' => 5,
                 'hunger' => 5,
                 'name' => 'Sylvester',
                 'mood' => 5
               }, 'Cat' );
$VAR2 = bless( {
                 'energy' => 4,
                 'hunger' => 6,
                 'name' => 'Felix',
                 'mood' => 5
               }, 'Cat' );
=cut

print "Next we will call a method to change some of the properties for one object\n";
$all_cats[0]->feed();
print Dumper(@all_cats);

=comment
$VAR1 = bless( {
                 'energy' => 5,
                 'hunger' => 5,
                 'name' => 'Sylvester',
                 'mood' => 5
               }, 'Cat' );
$VAR2 = bless( {
                 'energy' => 4,
                 'hunger' => 6,
                 'name' => 'Felix',
                 'mood' => 5
               }, 'Cat' );
=cut

print "We can change a property if it was set to 'rw'\n";
$all_cats[0]->{energy}=10;
print "Sylvester's energy is now ".$all_cats[0]->{energy}."\n";  #10
print "Let's demonstrate inheritance by creating a kitten.\n";
print "The kitten is a copy of the Cat object, but we added a 'playing' boolean \n";
print "and overwrote the 'play()' routine to also increase hunger\n";
my $nermal = new Kitten( name => 'Nermal', energy => 5, hunger => 6, mood => 8);
print Dumper($nermal);

=comment
$VAR1 = bless( {
                 'energy' => 5,
                 'hunger' => 6,
                 'name' => 'Nermal',
                 'mood' => 8,
                 'playing' => 0
               }, 'Kitten' );
=cut

print "go play, Nermal\n";
$nermal->play();
print Dumper($nermal);

=comment
$VAR1 = bless( {
                 'energy' => 4,
                 'hunger' => 7,
                 'name' => 'Nermal',
                 'mood' => 9,
                 'playing' => 1
               }, 'Kitten' );
=cut
