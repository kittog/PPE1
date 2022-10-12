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

# 28.09 log
# mieux vaut tout faire à la main (affectation fichier au dossier correspondant dans l'arborescence)

# compter fichiers .ann (pas les annotations à l'intérieur)
ls ./*/*/*.ann | wc -l

cat 2016*.ann | wc -l

# compte les caractères des retours à la ligne
ls -l 2016*.ann | wc -l

# afficher caractères invisibles => $ (= fins de ligne ?)
cat -E 2016_12_31-001.ann