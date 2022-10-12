#! /usr/bin/bash

# nom_script.sh arg1 arg2
# variables
ANNEE=$1
TYPE=$2

echo "Pour l'année $ANNEE :" > sortie.txt
grep $TYPE $ANNEE*.ann | wc -l >> sortie.txt

# cat sortie.txt