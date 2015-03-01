package Devel::AssertOS::MacOSX::v10_1;

use Devel::CheckOS;

$VERSION = '1.0';

sub os_is {
    Devel::CheckOS::os_is('MacOSX') &&
    `sw_vers -productVersion` =~ /^10\.1\./ ? 1 : 0;
}

sub expn { "The operating system is some version of OS X Puma (10.1)" }

Devel::CheckOS::die_unsupported() unless(os_is());

=head1 COPYRIGHT and LICENCE

Copyright 2007 - 2008 David Cantrell

This software is free-as-in-speech software, and may be used, distributed, and modified under the terms of either the GNU General Public Licence version 2 or the Artistic Licence. It's up to you which one you use. The full text of the licences can be found in the files GPL2.txt and ARTISTIC.txt, respectively.

=cut

1;
