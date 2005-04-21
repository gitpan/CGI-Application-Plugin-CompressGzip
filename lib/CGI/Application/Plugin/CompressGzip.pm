package CGI::Application::Plugin::CompressGzip;

use 5.006;
use strict;
use warnings;

use CGI::Application 3.21;
use CGI::Compress::Gzip 0.19;

require Exporter;

our @ISA = qw(Exporter);

our @EXPORT = qw(
    cgiapp_get_query
);

our $VERSION = '0.01';


sub cgiapp_get_query {
    return CGI::Compress::Gzip->new();
}

1;
__END__

=head1 NAME

CGI::Application::Plugin::CompressGzip - Add gzip compression to CGI::Application

=head1 WARNING

This is the initial release. I've not added any support for options or configuration,
because CGI::Compress::Gzip works for me out of the box.

=head1 SYNOPSIS

    use CGI::Application::Plugin::CompressGzip;

    my $query = $self->query;
  
=head1 DESCRIPTION

This plugin automatically enables gzip compression in your CGI::Application program.
You "use" it once in your base class, and the rest is transparent.

It does its work by overriding cgiapp_get_query, which returns a new
CGI::Compress::Gzip object instead of the default CGI object.

=head2 EXPORT

cgiapp_get_query

=head1 SEE ALSO

L<CGI::Application>, L<CGI::Compress::Gzip>

=head1 AUTHOR

Rhesa Rozendaal E<lt>rhesa@cpan.orge<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2005 by Rhesa Rozendaal

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.2 or,
at your option, any later version of Perl 5 you may have available.


=cut
