#!/usr/bin/perl

$i=1;
if (scalar @ARGV == 1) {
    open(FIC,"$ARGV[0]") or die "cher pas";
    @fic = <FIC> ;
    foreach my $line (@fic)
    {
        chomp($line) ;
        print "$i\t$line \n";
	$i=$i+1;
    }
}
