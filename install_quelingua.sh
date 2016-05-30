#!/bin/sh


for file in quelingua*
do
    awk '$0=="QUELINGUA_DIR=\"./QueLingua\""{print "QUELINGUA_DIR=\"'`pwd`'\"";next}\
         {print}' $file > $file.tmp;
    mv $file.tmp $file;
done


for file in LexiconBuilder*
do
    awk '$0=="QUELINGUA_DIR=\"./QueLingua\""{print "QUELINGUA_DIR=\"'`pwd`'\"";next}\
         {print}' $file > $file.tmp;
    mv $file.tmp $file;
done


echo 'Path variables modified in tagging scripts.'

chmod 0755 quelingua
chmod 0755 LexiconBuilder
chmod 0755 scripts/*


echo ''
echo 'You should add  '`pwd`'  to the command search path.'
echo ''

