#! /usr/bin/bash

# CRÉER ABORESCENCE À PARTIR DE L'ARCHIVE FICHIERS.ZIP

unzip Fichiers.zip

# créer aborescence (années, mois)
mkdir -p 201{6..8}/{1..12}
# on obtient trois dossiers années : 2016, 2017, 2018
# dans chq dossier : un dossier par mois

# déplacer les fichiers .txt, .ann 
mv 2016_01* 2016/1
mv 2016_0{1..9}* 2016/{1..9}
# destroyed all files

mv 201{6..8}_{01..12}* 201{6..8}/{01..12}
# mets tous fichiers + nouvelle arborescence 
# dans le dossier 2018/12 (dernier dossier)
mv 201{6..8}_{01..12}* -t 201{6..8}/{01..12}
# target : 2016/01
mv 2016_* -t 2016/{1..12}

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