Software::License::PD
=====================

[![Travis CI Build Status](https://travis-ci.org/jawnsy/Software-License-PD.svg?branch=master)](https://travis-ci.org/jawnsy/Software-License-PD)
[![AppVeyor CI Build Status](https://ci.appveyor.com/api/projects/status/github/jawnsy/Software-License-PD?branch=master&svg=true)](https://ci.appveyor.com/project/jawnsy/Software-License-PD)
[![Code Coverage](https://codecov.io/github/jawnsy/Software-License-PD/coverage.svg?branch=master)](https://codecov.io/github/jawnsy/Software-License-PD?branch=master)

Introduction
------------

This is a Perl module containing a pseudo-license that allows authors to
easily dedicate their work to the Public Domain.  It is ideal when authors
want to ensure that their work can be used without any restrictions
whatsoever.

It can be used with [Dist::Zilla](https://metacpan.org/release/Dist-Zilla)
simply by specifying:

    ; authordep Software::License::PD
    license = PD

in your `dist.ini` file.

License
-------

This module is licensed under the same terms that it contains: it is public
domain, with an optional fallback to MIT/X11, The Artistic License, or The
GNU General Public License.

For more details, see `perldoc Software::License::PD` or [view it online on
MetaCPAN](https://metacpan.org/pod/Software::License::PD).
