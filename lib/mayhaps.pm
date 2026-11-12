package mayhaps;

use v5.14;

our $VERSION = 'v0.1.0';

sub AUTOLOAD {
    my ($caller, $cond, @args) = @_;
    my ($method) = our $AUTOLOAD =~ /^mayhaps::(\w+)$/;
    return !!$cond ? $caller->$method(@args) : $caller;
}

1;
