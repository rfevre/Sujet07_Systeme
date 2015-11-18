#!/usr/bin/perl

@fichier=`ls`;
chomp @fichier;

foreach $i (@fichier) {
    $taille=(stat("$i"))[7];
    print("$taille","\t","$i","\n");
}
