#DNA reverso e complementar

my $arquivo_dna = "dna.txt";
my @dna_reverso;

open(my $dna, "<",$arquivo_dna) or die "Não foi possível abrir o $arquivo_dna";

foreach my $linha(<$dna>){
	foreach my $nucleotideo (split("", $linha)){
		if($nucleotideo eq "A"){
			push(@dna_reverso, "T");
		}
		if($nucleotideo eq "C"){
			push(@dna_reverso, "G");
		}
		if($nucleotideo eq "G"){
			push(@dna_reverso, "C");
		}
		if($nucleotideo eq "T"){
			push(@dna_reverso, "A");
		}
	}
}

print(join("",reverse(@dna_reverso)). "\n");