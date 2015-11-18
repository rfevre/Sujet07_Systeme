#!/usr/bin/perl

print("Nom de fichier d'entrée :","\n");
$entree=<STDIN>;
chomp $entree;

print("Nom de fichier de sortie :","\n");
$sortie=<STDIN>;
chomp $sortie;

print("Motif à remplacer :","\n");
$motifARpl=<STDIN>;
chomp $motifARpl;

print("Motif de remplacement :","\n");
$motifDeRpl=<STDIN>;
chomp $motifDeRpl;

if (! -e $sortie){
    open(DESCR,">$sortie");
    open(FIC,"$entree") or die "Erreur";
    @fic = <FIC> ;
    foreach my $line (@fic)
    {
	$line =~ s/$motifARpl/$motifDeRpl/g;
        print DESCR "$line";
    }
    close(DESCR);
}
else {
    print("Voulez vous remplacer le fichier : (o/n)","\n");
    $tmp=<STDIN>;
    chomp $tmp;
    if ( $tmp eq "o" ) {
	open(DESCR,">$sortie");
	open(FIC,"$entree") or die "Erreur";
	@fic = <FIC> ;
	foreach my $line (@fic)
	{
	    $line =~ s/$motifARpl/$motifDeRpl/g;
	    print DESCR "$line";
	}
	close(DESCR);
    }
    else {
	print("Le fichier n'a pas été créé","\n");
    }
}




