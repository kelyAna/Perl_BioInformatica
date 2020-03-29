# FAÇA UM PROGRAMA QUE LEIA UM ARQUIVO CONTENDO UMA STRING DE DNA
#O PROGRAMA DEVE RETORNAR 4 INTEIROS SEPARADOS SENDO ELES A QUANTIDADE DE CORORRENCIAS DE 
# 'A', 'C', 'G', AND 'T' RESPECTIVAMENTE

#EXEMPLO ENTRADA:
# AACGTGATCGATGATCAGTACAGATAGACATAGATCAGATACAGATA
#SAÍDA:
#20 12 17 21


my $nome_arquivo = "dna.txt";
my $dna;

my $conta_A = 0;
my $conta_C = 0;
my $conta_G = 0;
my $conta_T = 0;

open($dna, "<", $nome_arquivo) or die "Não foi possível abrir o arquivo $nome_arquivo";

foreach my $linha(<$dna>){
	foreach my $nucleotideos (split("",$linha)){
		if($nucleotideos eq "A"){
			$conta_A++;
		}

		if($nucleotideos eq "C"){
			$conta_C++;
		}

		if($nucleotideos eq "g"){
			$conta_G++;
		}

		if($nucleotideos eq "A"){
			$conta_T++;
		}
	}
}

close($dna);

print("$conta_A $conta_G $conta_C $conta_T");
