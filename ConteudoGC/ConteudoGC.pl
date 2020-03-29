#Conteudo CG

my $arquivo_fasta = "fasta.txt";
my $tamanho = 0;
my $GC = 0;


open(my $fastaArquivo, "<", $arquivo_fasta) or die "Não foi possível abrir o $arquivo_fasta";

foreach my $linha(<$fastaArquivo>){
	my @nucleotideos = split("", $linha);
	if($nucleotideos[0] ne ">"){
		foreach my $nucleotideo(@nucleotideos){
			$tamanho++;

			if($nucleotideo eq "C" or $nucleotideo eq "G"){
				$GC++;
			}
		}
	}
}

print($GC * 100/$tamanho);