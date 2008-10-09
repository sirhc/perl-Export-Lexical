#!perl -T

use strict;
use warnings;
use Test::More tests => 1;

BEGIN {
    use_ok 'Export::Lexical';
}

diag "Testing Export::Lexical $Export::Lexical::VERSION";
diag "Perl $]";
diag $^X;
