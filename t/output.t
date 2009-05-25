#!perl

use strict;
use warnings;

use File::Spec;
use Test::More tests => 1;
use IPC::Run qw( run );

run [ $^X, '-MDevel::Ditto', File::Spec->catfile( 't', 'myprog.pl' ) ],
 \my $in, \my $out, \my $err
 or die "Failed: $?";
diag $out;
diag $err;

#open my $ph, '-|', $^X, '-MDevel::Ditto',
# File::Spec->catfile( 't', 'myprog.pl' );
#my @got = <$ph>;
#close $ph or die "myprog.pl failed: $?";

#diag Dumper(\@got);

ok 1, "that's ok";

# vim:ts=2:sw=2:et:ft=perl

