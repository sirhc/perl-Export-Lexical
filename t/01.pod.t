#!perl -T

use strict;
use warnings;
use Test::More;

plan skip_all => 'Set AUTHOR_TEST to run' if !$ENV{'AUTHOR_TEST'};

eval 'use Test::Pod 1.14';
plan skip_all => 'Test::Pod 1.14 required to test pod' if $@;
all_pod_files_ok();
