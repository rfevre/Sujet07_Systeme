#!/usr/bin/perl

$i=1;
if (scalar @ARGV == 1) {
    open(FIC,"$ARGV[0]") or die "Erreur : $!";
    foreach $line (<FIC>)
    {
        chomp($line) ;
        print "$i\t$line \n";
	$i=$i+1;
    }
}
else {
    open(FIC,"<STDIN>") or die "Erreur : $!";
    foreach $line (<FIC>)
    {
        chomp($line) ;
        print "$i\t$line \n";
	$i=$i+1;
    }
}
