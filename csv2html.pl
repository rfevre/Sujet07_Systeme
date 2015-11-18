#!/usr/bin/perl

$header=0;
$var = <STDIN>;

open(FIC,"$var") or die "Erreur";
@fic = <FIC> ;


print "<html>";
print "<table>";

foreach my $line (@fic)
{
    if ($header == 0) {
	print "<tr>";
	my @cells= split ';',$line;
	foreach my $cell (@cells)
	{
	    print "<th>$cell</th>";
	}
	print "</tr>";
	$header++;
    }
    print "<tr>";
    my @cells= split ';',$line;
    foreach my $cell (@cells)
    {
       print "<td>$cell</td>";
    }
    print "</tr>";
}

print "</table>";
print "</html>";
close(FIC);

