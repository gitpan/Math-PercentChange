#/usr/bin/perl
use warnings;
use strict;
use Test::More tests => 3;
use lib ('lib');

BEGIN { use_ok( 'Math::PercentChange', qw(percent_change) ); }

is( percent_change(10, 15), 50, 'positive');
is( percent_change(10, 5), -50, 'negative');


