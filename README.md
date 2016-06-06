# QueLingua: language identifier

##Author
Grupo ProLNat@GE
CiTIUS, University of Santiago de Compostela
Galiza


## DESCRIPTION
This software contains a language indentifier for several languages:  `en`, `es`, `pt`, `gl` (galician), `gz` (agal galician variety), `fr`, `eu` (euskara), `ca` (catalan), `bn` (bengali), `ur` (urdu), `hi` (hindi), ta (tamil). You can also use the identifier to guess among 16 language varieties  (see below).
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
Syntax: cat FILE |./quelingua [OPT]
      
      FILE = path of the input file 
      OPT = options

      Options:
      -var = identification of varieties (by default: standard languages)
      -help (--h) = help
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

```
çom	gz
ção	pt
```
This means that the system takes into account -çom suffixes to enhance the weight of galician-AGAL (gz) language. The same for -ção suffixes and Portuguese (pt) language. The two columns are separated by tabulation (\t). 	
	
* VARIETIES:

13 languages/varieties divided in 6 groups: 

 ** Bulgarian (`bg`) and  Macedonian (`mk`) group

 ** Bosnian (`bs`), Croatian (`hr`) and Serbian (`sr`)

 ** Czech (`cz`) and  Slovak (`sk`)

 ** Spanish from Argentina (`es-AR`) and from Spain (`es-ES`)

 ** Portuguese from Brazil (`pt-BR`) and from Portugal (`pt-PT`)

 ** Malay (`my`) and Indonesia (`id`)

Language varieties trained with the DSL-TASK corpus: https://github.com/Simdiva/DSL-Task
	 
