# QueLingua: language identifier

##Author
Grupo ProLNat@GE
CiTIUS, University of Santiago de Compostela
Galiza


## DESCRIPTION
This software contains a language indentifier for several languages: English, Portuguese, Spanish, Galician (gl and gz), French, Catalan, Euskera, Indu, Urdu, Bengali, Tamil. 
The main programs  were implemented in PERL.


## REQUIREMENTS
any Linux distribution


## HOW TO INSTALL
* With git:
```
git clone https://github.com/gamallo/QueLingua.git
sh install-quelingua.sh
```
* With zip version (download QueLingua-master.zip):
```
unzip QueLingua-master.zip
sh install-quelingua.sh
```

## HOW TO USE 

```
./quelingua <FILE> or cat FILE |./quelingua 

      file=path of the file input
```       

## INPUT FILE

The input file must be in plain text format. 
File encoding: UTF-8.


## ENHENCEMENTS

* LEXICON BUILDER:
The user can build new dictionaries in other languages and add them to the repository of lexicons. The output must be saved in ./lexicons.

How to use the lexicon builder:

```
./LexiconBuilder <MAX> <FILE> or cat <FILE> |./LexiconBuilder <MAX> 

	MAX=size of the lexicon
	file=path of the file input
```        

* MORPHOLOGICAL INFORMATION
The user can edit files with morphological information. Up to now, it is only possible to write productive suffixes in file './morpho/suffix.txt'. The format of this file consists of 2 columns (suffix \t language). For instance:

çom	gz
ção	pt

This means that the system takes into account -çom suffixes to enhance the weight of galician-AGAL (gz) language. The same for -ção suffixes and Portuguese (pt) language. The two columns are separated by tabulation (\t). 	
	

	 
