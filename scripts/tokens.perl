#!/usr/bin/perl -w

#Tokenizer:
#lê um ficheiro texto linha a linha
#Separa os símbolos especiais
#quebra as linhas cada vez que encontra um espaço em branco
#escreve um tokem ou símbolo por linha
binmode STDIN, ':utf8';
binmode STDOUT, ':utf8';
use utf8;

my $Separador = "[\.\,\;\:\"\«\»\&\%\=\$\(\)\<\>\!\¡\?\¿\\[\\]]" ;

while (my $line=<STDIN>) {
      chop($line);
       
      $line =~ s/([A-Z])\.([A-Z])/$1$2/g;
      $line =~ s/($Separador)/ $1 /g;
      #$line =~ s/\s+/ /g;
      
     
      @ListaDeTokens = split(" ", $line);
      foreach my $token (@ListaDeTokens) {
	 # print STDERR "$token\n";
        print "$token\n";
        
      }
}


#print STDERR "Fim do tokenizer\n";


