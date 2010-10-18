#!perl -T
#
# This test is designed to demonstrate that a module (DoImport) can use
# another module (DoSilent), which uses Export::Lexical.

use strict;
use warnings;
use Test::More tests => 4;

use lib 't';
use DoImport;           # Calls made to DoSilent at this point succeed.

DoImport->suppressed(); # Calls made to DoSilent at this point silently fail.
