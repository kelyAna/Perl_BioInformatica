
my $arquivo_dna = "dna.txt";
my $arquivo_rna = "rna.txt";

open($dna, "<", $arquivo_dna) or die "Não foi possivel abrir o $arquivo_dna";
open($rna, ">", $arquivo_rna) or die "Não foi possivel abrir o $arquivo_rna";


foreach my $linha(<$dna>){
	foreach my $nucleotideo(split("", $linha)){
		if($nucleotideo eq "T"){
			print $rna "U";
		}else{
			print $rna;
		}
	}
}

close($dna);
close($rna);