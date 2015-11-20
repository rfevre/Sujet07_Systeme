#!/usr/bin/perl

$num=0;
$fich = <STDIN>;
open(FIC,"$fich") or die "Open FIC : $!";
open(DST,">f.txt") or die "Open DST : $!";
open(DST1,">f1.txt") or die "Open DST1 : $!";
open(DST2,">f2.txt") or die "Open DST2 : $!";

foreach (<FIC>) {
    chomp;
    @ligne= split /;/;
    print ("@ligne","\n");
}

close(FIC);
close(DST);
close(DST1);
close(DST2);

