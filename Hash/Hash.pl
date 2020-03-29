#DECLARAÇÃO
my %nucleiotidios  = (
	"A" => "adenina",
	"C" => "citosina",
	"G" => "guanina",
);

#ACESSANDO OS ELEMENTOS
#int($ucleiotidios{"G"});


#TAMANHO DO HASH
#print(scalar(%nucleiotidios));

#ATRIBUINDO UM NOVO VALOR A UMA CHAVE EXISTENTE
#$nucleiotidios{"A"} = "Adenina";
#print($nucleiotidios{"A"});

#CRIANDO UM NOVO ELEMENTO NO HASH
$nucleiotidios{"T"} = "timina";
#print($nucleiotidios{"T"});


#ITERANDO PELAS CHAVES
foreach my $chave(keys(%nucleiotidios)){
	#print($chave . "\n");
}

#INTERANDO PELOS VALORES
foreach my $valor(values(%nucleiotidios)){
	#print($valor . "\n");
}

#DELETANDO UM ELEMENTO PELA CHAVE
delete($nucleiotidios{"A"});
foreach my $chave(keys(%nucleiotidios)){
	print($chave . "\n");
}