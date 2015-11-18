#!/usr/bin/perl

$var = <STDIN>;

open(FIC,"$var") or die "Erreur";
@fic = <FIC> ;

open(DESCR,">temp.html");

print DESCR "<html>";
print DESCR "<table>";

foreach my $line (@fic)
{
    print DESCR "<tr>";
    my @cells= split ';',$line;
    foreach my $cell (@cells)
    {
       print DESCR "<td>$cell</td>";
    }
    print DESCR "</tr>";

}

print DESCR "</table>";
print DESCR "</html>";
close(DESCR);
close(FIC);

