#!perl -T

use strict;
use warnings;
use Test::More;

plan skip_all => 'Set AUTHOR_TEST to run' if !$ENV{'AUTHOR_TEST'};

eval 'use Test::Pod::Coverage 1.04';
plan skip_all => 'Test::Pod::Coverage 1.04 required to test pod coverage' if $@;
all_pod_coverage_ok();
