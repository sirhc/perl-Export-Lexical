#!perl -T

use strict;
use warnings;
use Test::More;

plan skip_all => 'Set AUTHOR_TEST to run' if !$ENV{'AUTHOR_TEST'};

eval 'use Test::Perl::Critic';
plan skip_all => 'Test::Perl::Critic required to criticize code' if $@;
all_critic_ok();
