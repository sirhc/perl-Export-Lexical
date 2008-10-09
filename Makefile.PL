#!perl

use 5.010;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Export::Lexical',
    AUTHOR              => 'Chris Grau <cgrau@cpan.org>',
    VERSION_FROM        => 'lib/Export/Lexical.pm',
    ABSTRACT_FROM       => 'lib/Export/Lexical.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'version'    => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Export-Lexical-*' },
);
