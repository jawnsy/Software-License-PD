use strict;
use warnings;

package Software::License::PD;
# ABSTRACT: Public Domain pseudo-license

use base 'Software::License';

require Software::License::MIT;
require Software::License::GPL_3;
require Software::License::Artistic_2_0;

=pod

=encoding utf8

=head1 DESCRIPTION

In legal circles, B<Public Domain> is defined as the absence of B<copyright>
(and therefore precludes the need for any B<license>). Artistic works enter
the Public Domain in two common situations:

=over

=item 1

Where the work carries no license or copyright information, and precedes
the ratification of the I<Berne Convention for the Protection of Literary
and Artistic Works>; or

=item 2

Where the term of copyright has lapsed, the length of which varies between
jurisdictions

=back

Some authors have chosen to disclaim all rights to their works and release it
into the Public Domain, which is ideal when authors want to ensure that their
work can be used without any restrictions whatsoever.  However, the notion of
relinquishing work into the Public Domain can be contentious in some cases,
since some jurisdictions may not recognize an author's prerogative to disclaim
all rights to their own work.  In European countries, for example, authors can
abandon their claim to copyright, but not reputation rights (which prevent
people from removing your name from your work, among other things).

While I have researched the issue to some extent, I am not a lawyer and am
not qualified to provide legal advice.  I have used this license for some of
my own packages, but am unsure whether it would stand up in a court of law.

=head1 USAGE

This module can be used with L<Dist::Zilla> simply by specifying:

    ; authordep Software::License::PD
    license = PD

in your C<dist.ini> file.

=head1 WHY NOT CREATIVE COMMONS ZERO?

The B<Creative Commons Zero> (CC0) license is an extremely liberal license,
which confers rights similar to Public Domain to the extent permissible by
law. However, Creative Commons does not recommend the application of their
licenses to software, see: L<Can I apply a Creative Commons license to
software?|https://wiki.creativecommons.org/wiki/Frequently_Asked_Questions#Can_I_apply_a_Creative_Commons_license_to_software.3F>

=head1 NOTABLE PROJECTS

Several notable Open Source software projects have been released into the
Public Domain, including:

=over

=item *

L<SQLite|http://sqlite.org>, a popular embedded database library included
in many other projects, both open source and proprietary

=item *

L<djbdns|http://cr.yp.to/djbdns.html>, a small DNS server used in many
embedded devices, along with L<numerous other projects published by
Daniel J. Bernstein|http://cr.yp.to/distributors.html>

=item *

L<Berkeley Yacc|http://invisible-island.net/byacc/byacc.html>

=item *

L<Math::Random::ISAAC>, as well as the L<algorithm and accompanying reference
implementation|http://burtleburtle.net/bob/rand/isaacafa.html>

=back

=head1 SEE ALSO

=over

=item *

The L<Berne Convention for the Protection of Literary and Artistic
Works|http://wipo.int/treaties/en/ip/berne/index.html>, which provides
automatic internationalised copyright ownership for authors of artistic
works.

=item *

Edward Samuels' exploration of L<The Public Domain in Copyright
Law|http://edwardsamuels.com/copyright/beyond/articles/public.html>,
which describes the nature of copyright and the mechanisms under which
works can enter the public domain (e.g. through expiration or forfeiture
of copyright, or non-copyrightable works.)

=item *

Daniel J. Bernstein's examination, L<Placing documents into the public
domain|http://cr.yp.to/publicdomain.html>

=item *

L<The Unlicense|http://unlicense.org/>, a copyright waiver statement

=item *

L<Managing copyright information within a free software
project|https://softwarefreedom.org/resources/2012/ManagingCopyrightInformation.html>,
published by the Software Freedom Law Center

=back

=cut

sub name { 'Public Domain pseudo-license (GPL, Artistic, MIT or PD)' }
sub url  { 'http://edwardsamuels.com/copyright/beyond/articles/public.html' }
sub meta_name  { 'unrestricted' }
sub meta2_name { 'unrestricted' }

sub _mit {
  my ($self) = @_;
  return $self->{_mit} ||= Software::License::MIT->new({
    year   => $self->year,
    holder => $self->holder,
  });
}

sub _gpl {
  my ($self) = @_;
  return $self->{_gpl} ||= Software::License::GPL_3->new({
    year   => $self->year,
    holder => $self->holder,
  });
}

sub _tal {
  my ($self) = @_;
  return $self->{_tal} ||= Software::License::Artistic_2_0->new({
    year   => $self->year,
    holder => $self->holder,
  });
}

1;

__DATA__
__NOTICE__
Anyone is free to copy, modify, publish, use, compile, sell, or distribute
this software, either in source code form or as a compiled binary, for any
purpose, commercial or non-commercial, and by any means.

The author or authors of this software dedicate any and all copyright interest
in the software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and successors. We
intend this dedication to be an overt act of relinquishment in perpetuity of
all present and future rights to this software under copyright law.

The software is provided "AS IS", without warranty of any kind, express or
implied, including but not limited to the warranties of merchantability,
fitness for a particular purpose and noninfringement. In no event shall the
authors or copyright holders be liable for any claim, damages or other
liability, whether in an action of contract, tort or otherwise, arising from,
out of or in connection with the software or the use or other dealings in
the software.

__LICENSE__
                      PUBLIC DOMAIN PSEUDO-LICENSE

The author or authors of this software package hereby release the contents
therein into the public domain. This applies worldwide, to the extent that
it is permissible by law.

In case this is not legally possible, we grant any entity the right to use
this work for any purpose, without any conditions, unless such conditions
are required by law.

If you so choose, or if you are legally compelled to do so, you may use
this software under the terms of your choice of the following licenses:

1. The MIT/X11 License; or,
2. The Perl Artistic License, version 1 or later; or,
3. The GNU General Public License, version 1 or later

For your convenience, the full text of the latest versions of these licenses
(as of writing) follow.

--------- {{ $self->_mit->name }} ---------

{{ $self->_mit->fulltext }}

--------- {{ $self->_tal->name }} ---------

{{ $self->_tal->fulltext }}

--------- {{ $self->_gpl->name }} ---------

{{ $self->_gpl->fulltext }}
