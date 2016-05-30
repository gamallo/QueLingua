DEP-PATTERN PARSERS AND COMPILER

Author: 
Pablo Gamallo Otero
Grupo ProLNat
University of Santiago de Compostela
Spain


DESCRIPTION
This software contains a language indentifier for 5 languages: English, Spanish, Galician, French, and Portuguese. 
The main programs  were implemented in PERL.


REQUIREMENTS
any Linux distribution


HOW TO INSTALL

(1)
> tar  xzvf  QueLingua.tgz

(2)
> sh install-quelingua.sh


HOW TO USE 

./quelingua <FILE> or cat FILE |./quelingua 

      file=path of the file input
           

INPUT FILE

The input file must be in plain text format. 
File codification must be latin 1  (however, if the input texts are in UTF-8, you can use the lexicons stored in './lexicons_unicode' by copying them to './lexicons').


ENHENCEMENTS

(1) LEXICON BUILDER:
The user can build new dictionaries in other languages and add them to the repository of lexicons. The output must be saved in ./lexicons.

HOW TO USE THE BUILDER OF LEXICONS

./LexiconBuilder <MAX> <FILE> or cat <FILE> |./LexiconBuilder <MAX> 

	MAX=size of the lexicon
	file=path of the file input
           

INPUT FILE

The input file must be in plain text format. 
File codification must be latin 1 (however, if the input texts are in UTF-8, you can use the lexicons stored in './lexicons_unicode' by copying them to './lexicons').


(2) MORPHOLOGICAL INFORMATION
The user can edit files with morphological information. Up to now, it is only possible to write productive suffixes in file './morpho/suffix.txt'. The format of this file consists of 2 columns (suffix \t language). For instance:

çom	gz
ção	pt

This means that the system takes into account -çom suffixes to enhance the weight of galician-AGAL (gz) language. The same for -ção suffixes and Portuguese (pt) language. The two columns are separated by tabulation (\t). 

	
	

	 
