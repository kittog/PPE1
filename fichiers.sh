#! /usr/bin/bash

# afficher annotations année 2016
echo "Pour l'année 2016 :" > sortie.txt
grep "Location" 2016*.ann | wc -l >> sortie.txt
# afficher annotations année 2017
echo "Pour l'année 2017 :" > sortie.txt
grep "Location" 2017*.ann | wc -l >> sortie.txt
# afficher annotations année 2018
echo "Pour l'année 2018 :" > sortie.txt
grep "Location" 2018*.ann | wc -l >> sortie.txt

# afficher caractères invisibles => $ (= fins de ligne ?)
cat -E 2016_12_31-001.ann