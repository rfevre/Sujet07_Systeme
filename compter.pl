#!/usr/bin/perl

@var=<STDIN>;
chomp @var;
$long=scalar @var;

for($i=0;$i<$long;$i++)
{
    $cpt=0;
    for($j=0;$j<$long;$j++)
    {
	if ($var[$i] eq $var[$j])
	{
	    $cpt=$cpt+1;
	}
    }
    print("$var[$i] apparait $cpt fois","\n");
}




