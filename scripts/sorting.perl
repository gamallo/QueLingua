#!/usr/bin/perl

$MAX = shift(@ARGV);


while ($token = <STDIN> ) {

 chomp $token;


$Formas{$token}++  ; 

$contarTokens++ ;

}

$i=0;
foreach $f (sort {$Formas{$b} <=> 
                  $Formas{$a}}
                  keys %Formas) {
   if ($i < $MAX) {
     print "$f\n";
     $i++;
   }
}
