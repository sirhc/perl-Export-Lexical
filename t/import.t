#!perl -T
#
# Test using Export::Lexical in two different packages in the same file.
# Previously, the constructed subroutines were exported to the calling class
# during compilation, so only the first class would get them.

use strict;
use warnings;
use Test::More tests => 4;

package One;
use Export::Lexical;

package Two;
use Export::Lexical;

package main;

ok exists &One::import, '&One::import exists';
ok exists &One::unimport, '&One::unimport exists';

ok exists &Two::import, '&Two::import exists';
ok exists &Two::unimport, '&Two::unimport exists';
