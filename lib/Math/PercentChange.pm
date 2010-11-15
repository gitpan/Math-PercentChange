package Math::PercentChange;
use warnings;
use strict;

=head1 NAME

Math::PercentChange - calculate the percent change between two values

=head1 VERSION

version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

  use Math::PercentChange qw(percent_change);
  my $from = 10;
  my $to = 5;
  my $diff = percent_change($from, $to); # -50
  
=cut

our (@ISA, @EXPORT_OK);
BEGIN {
  require Exporter;
  @ISA = qw(Exporter);
  @EXPORT_OK = qw(percent_change); # symbols to export on request
}

=head2 percent_change 

Calculate the percent change between two values.  Returns the percent difference.

=cut


sub percent_change {
  my ($from, $to) = @_; 
  my $diff = (($to - $from) / $from) * 100;
  return $diff;
}

=head1 AUTHOR

Mike Baas E<lt>mbaas@cpan.orgE<gt>

=cut

=head1 ACKNOWLEDGEMENTS 
 
This extremely simple code was taken from Mark Jason Dominus' correction of David Wheeler's blog post on the subject matter of 'How To Calculate Percentage Change Between Two Values'. See http://www.justatheory.com/learn/math/percent_change.html for the original posting.

=cut

=head1 LICENSE

This is free software; you can redistribute it and/or modify it under the same terms as the Perl 5 programming language system itself.

=cut

1;

