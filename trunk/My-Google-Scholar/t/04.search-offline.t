#!/usr/bin/perl

use Test::Simple tests => 3;
use strict;
use warnings;

use lib qw( lib ../lib );

use My::Google::Scholar;
use YAML qw(LoadFile);

my $scholar = My::Google::Scholar->new( { num => 100,
					  as_subj => 'eng' });


my $papers = LoadFile('Marc Schoenauer-papers.yaml');

my $h_index = $scholar->h_index( $papers );
ok( $h_index >= 23, "Marc's h_index is OK" );

my $cites = $scholar->references( $papers );
ok( $cites >= 1865, "Marc's number of references is OK" );

my $g_index = $scholar->g_index( $papers );
ok( $g_index >= 40, "Marc's g_index is OK" );


