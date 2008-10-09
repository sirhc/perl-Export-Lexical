#!perl -T

use 5.010;
use strict;
use warnings;
use Test::More tests => 11;

use lib 't';

use Foo 'foo';

foo( sub { ok 1, 'foo(1) - use Foo foo' } );
bar( sub { fail, 'bar(1) - use Foo foo' } );

{
    no Foo;
    foo( sub { fail, 'foo(2) - no Foo' } );
    bar( sub { fail, 'bar(2) - no Foo' } );

    {
        use Foo;
        foo( sub { ok 1, 'foo(3) - use Foo' } );
        bar( sub { ok 1, 'bar(3) - use Foo' } );
    }

    foo( sub { fail, 'foo(4) - no Foo' } );
    bar( sub { fail, 'bar(4) - no Foo' } );
}

use Foo 'bar';
foo( sub { fail, 'foo(5) - use Foo bar' } );
bar( sub { ok 1, 'bar(5) - use Foo bar' } );

use Foo;
foo( sub { ok 1, 'foo(6) - use Foo' } );
bar( sub { ok 1, 'bar(6) - use Foo' } );

no Foo 'foo';
foo( sub { fail, 'foo(7) - no Foo foo' } );
bar( sub { ok 1, 'bar(7) - no Foo foo' } );

use Foo 'foo', 'bar';
foo( sub { ok 1, 'foo(8) - use Foo foo bar' } );
bar( sub { ok 1, 'bar(8) - use Foo foo bar' } );

no Foo 'bar';
foo( sub { ok 1, 'foo(9) - no Foo bar' } );
bar( sub { fail, 'bar(9) - no Foo bar' } );

no Foo;
foo( sub { fail, 'foo(10) - no Foo' } );
bar( sub { fail, 'bar(10) - no Foo' } );

use Foo 'foo';
foo( sub { ok 1, 'foo(11) - use Foo foo' } );
bar( sub { fail, 'bar(11) - use Foo foo' } );
