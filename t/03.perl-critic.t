#!perl

use strict;
use warnings;
use Test::More;

if ( !$ENV{'TEST_PERL_CRITIC'} ) {
    plan skip_all => q(Set $ENV{'TEST_PERL_CRITIC'} to a true value to run.);
}

eval q(use Test::Perl::Critic);
plan skip_all => q(Test::Perl::Critic required to criticize code) if $@;

all_critic_ok();
