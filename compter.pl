#!/usr/bin/perl

while (<STDIN>) {
    chomp;
    $_=(split (/[^[:word:]]/, $_))[0];
    if($hach{"$_"} == undef){
	$hach{"$_"} = 1;
    }
    else {
	$hach{"$_"} = $hach{"$_"} + 1;
    }

    while (($mot,$cpt)=each(%hach)){
	print "$mot => $cpt occurence \n";
    }
}


