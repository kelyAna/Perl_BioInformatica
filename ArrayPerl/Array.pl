#DECLARAÇÃO
my @cores = ("azul", "amarelo", "vermelho");

#ACESSANDO UM ELEMENTO DO ARRAY
#($cores[2] . "\n");

#TAMANHO DO ARRAY
print(scalar(@cores) . "\n");

#PERCORRENDO ARRAY
foreach my $cor (@cores){
	print($cor . "\n");
}

#ORDENANDO 
@cores = sort(@cores);

#INVERTENDO
@cores = reverse(@cores);
#print(@cores . "\n");

#INSERIR ELEMENTO NO FINAL
push(@cores, "verde");
#print(@cores. "\n");

#REMOVER ELEMENTO DO FINAL#
#ultimo = pop(@cores);
#print($ultimo);

#REMOVER ELEMENTO DO INICIO
my $primeiro = shift(@cores);
print(@cores. "\n");
