package mayhaps;

use v5.14;

our $VERSION = 'v0.1.1';

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

=head1 EXPORTS

None.

=head1 prepend:SUPPORT

Only the latest release of this module will be supported.

This module requires Perl v5.14 or later.
Future releases may only support Perl versions released in the last ten years.

=head2 Reporting Bugs and Submitting Feature Requests

=head1 append:SUPPORT

If the bug you are reporting has security implications which make it inappropriate to send to a public issue tracker,
then see F<SECURITY.md> for instructions how to report security vulnerabilities.

=begin :prelude

=for stopwords mayhaps

=end :prelude

=cut

1;
