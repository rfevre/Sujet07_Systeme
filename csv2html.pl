#!/usr/bin/perl
use Getopt::Std;

$header=0;
$var = <STDIN>;
$separateur = ';';

getopts( 'd:s:S', \%opts ) or print_usage();
if (! $opts{d} == undef){
    $separateur=$opts{d};
}
if (! $opts{s} == undef){

}
elsif (! $opts{S} == undef){

}

open(FIC,"$var") or die "Open : $!";

print "<html lang=\"fr\">";
print "<head>";
print "<meta charset=\"utf-8\">";
print "<title>Test</title>";
print "<link rel=\"stylesheet\" href=\"style.css\">";
print "</head>";
print "<table>";

foreach my $line (<FIC>)
{
    if ($header == 0) {
	print "<tr>";
	my @cells= split $separateur ,$line;
	foreach my $cell (@cells)
	{
	    print "<th>$cell</th>";
	}
	print "</tr>";
	$header++;
    }
    else {
	print "<tr>";
	my @cells= split $separateur ,$line;
	foreach my $cell (@cells)
	{
	    print "<td>$cell</td>";
	}
	print "</tr>";
    }
}

print "</table>";
print "</html>";
close(FIC);

