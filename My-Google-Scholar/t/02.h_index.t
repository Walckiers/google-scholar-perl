#!/usr/bin/perl

use strict;
use warnings;

use lib qw( lib ../lib );

use My::Google::Scholar;

my $scholar = My::Google::Scholar->new( { num => 100,
					  as_subj => 'eng' });

my $h_index = $scholar->h_index( 'Koza, John' ); # Returns My::Google::Scholar::Paper

print "H-Index for Koza, John is $h_index\n";

