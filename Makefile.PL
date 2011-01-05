use strict;
use warnings;

use inc::Module::Install;

my $dist = 'RDF-Query-Functions-Buzzword-Util';
my $fn   = "lib/$dist.pm"; $fn =~ s#-#/#g;

name                $dist;
perl_version_from   $fn;
version_from        $fn;
abstract_from       $fn;
readme_from         $fn;
author              'Toby Inkster <tobyink@cpan.org>';
license             'perl';

requires            'common::sense'      => 0;
requires            'Data::UUID'         => 0;
test_requires       'Module::Signature'  => '0.66';
requires            'RDF::Query'         => '2.903';
requires            'Scalar::Util'       => 0;
test_requires       'Test::More'         => '0.61';
requires            'XML::LibXML'        => '1.60';

resources(
	'homepage'   => "http://search.cpan.org/dist/$dist/",
	'repository' => "http://goddamn.co.uk/viewvc/perlmods/$dist/",
	'bugtracker' => "http://rt.cpan.org/Dist/Display.html?Queue=$dist",
	);

keywords(qw[SPARQL query extension functions utilities utility plugin RDF Semantic Web SemWeb]);

write_doap_changes;
write_doap_changes_xml;

include 'Test::Signature';
auto_install;
WriteAll(
	'meta' => 1,
	'sign' => 1,
	);
