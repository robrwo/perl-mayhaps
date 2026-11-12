package mayhaps;

use v5.14;

our $VERSION = 'v0.1.0';

sub AUTOLOAD {
    my ($caller, $cond, @args) = @_;
    my ($method) = our $AUTOLOAD =~ /^mayhaps::(\w+)$/;
    return !!$cond ? $caller->$method(@args) : $caller;
}

## ABSTRACT: call methods conditionally for any class or object

=head1 SYNOPSIS

    use mayhaps;

    $obj->mayhaps::frobnicate( $has_hands, 'foo' );

is equivalent to

    ($has_handles) ? $obj->frobnicate('foo') : $obj;

=head1 DESCRIPTION

This module allows you to call methods conditionally.  This is useful for chained methods, for example:

    my $rs = $schema->resultset('Books')
              ->with_authors
              ->with_publishers
              ->mayhaps::with_sales_stats( $is_internal );

=head2 What does "mayhaps" mean?

It is an archaic English synonym for "maybe".
There is already a module called L<maybe> with a different function.

=cut

1;
