#!/usr/bin/perl

foreach (glob "*") {
    $taille=(stat("$_"))[7];
    print("$taille","\t","$_","\n");
}
