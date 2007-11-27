#!/usr/bin/perl

use strict;
use warnings;

use lib qw( lib ../lib );

use My::Google::Scholar;

my $scholar = My::Google::Scholar->new( { num => 100,
					  as_subj => 'eng' });

my @papers = $scholar->search_author( 'Koza, John' ); # Returns My::Google::Scholar::Paper

for my $p (@papers ) {
  print "Title ", $p->title(), "\n";
}
