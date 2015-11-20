#!/usr/bin/perl

# Compteur pour le num de l'étudiant
$num=0;

# Ouverture des fichiers
$fich = <STDIN>;
open(FIC,"$fich") or die "Open FIC : $!";
open(DST,">f.txt") or die "Open DST : $!";
open(DST1,">f1.txt") or die "Open DST1 : $!";
open(DST2,">f2.txt") or die "Open DST2 : $!";

# Tant que l'on peux lire une ligne dans le fichier
foreach (<FIC>) {
    chomp;
    # On recheche l'un des séparateur pour le remplacer par un espace
    s/[;,\t]/ /gi;
    # Ensuite en enregistre dans un tableau
    @ligne = split (' ',$_);
    # 0n utilise se tableau pour enregistrer les variables voulu dans les fichiers
    $dest=join(';',$num,$ligne[0],$ligne[1]);
    print DST ("$dest","\n");

    if ($ligne[2]==1) {
	$dest1=join(';',$num,$ligne[3]);
	print DST1 ("$dest1","\n");
    }

    if ($ligne[2]==2) {
        $dest2=join(';',$num,$ligne[3]);
	print DST2 ("$dest2","\n");
    }

    $num++;
}

# Fermeture des fichiers
close(FIC);
close(DST);
close(DST1);
close(DST2);

