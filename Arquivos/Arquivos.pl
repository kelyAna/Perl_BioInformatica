my $nome_arquivo = "dna.txt";
my $dna;
my @nucleotideos = ("A", "C", "G", "T");

#CRIANDO UM ARQUIVO PARA ESCRITA
open($dna, ">", $nome_arquivo)
	or die "Não foi possível abrir o arquivos $nome_arquivo!";


for (my $i=0; $i <= 70; $i++){
		my $indice_aleatorio0_4 = int(rand(4));
		print $dna $nucleotideos[$indice_aleatorio0_4];
	}
print $dna "\n";
close($dna);

#ABRINDO ARQUIVO PARA ESCRITA
open($dna, ">>", $nome_arquivo)
	or die "Não foi possível abrir o arquivos $nome_arquivo!";


for (my $i=0; $i <= 50; $i++){
		my $indice_aleatorio0_4 = int(rand(4));
		print $dna $nucleotideos[$indice_aleatorio0_4];
	}
print $dna "\n";
close($dna);

#ABRINDO ARQUIVO PARA LEITURA
open($dna, "<", $nome_arquivo)
	or die "Não foi possível abrir o arquivos $nome_arquivo!";

foreach my $linha (<$dna>){
	print($linha);
}

print $dna "\n";
close($dna);