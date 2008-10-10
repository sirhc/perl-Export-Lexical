package Foo;

use 5.010;
use strict;
use warnings;

use lib 'lib';
use Export::Lexical;

sub foo :ExportLexical {
    $_[0]->();
}

sub bar :export_lexical {
    $_[0]->();
}

1;
