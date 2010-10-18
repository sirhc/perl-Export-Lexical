package DoImport;

use strict;
use warnings;
use Test::More;

use lib 't';
use DoSilent;

ok silent1(), 'use DoSilent; silent1();';
ok silent2(), 'use DoSilent; silent2();';

sub suppressed {
    no DoSilent;

    ok !silent1(), 'no DoSilent; silent1();';
    ok !silent2(), 'no DoSilent; silent2();';
}

1;
