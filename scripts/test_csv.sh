# CRÉER TABLE HTML DEPUIS BASH À PARTIR DE FICHIER .CSV
#header = $(head -n1 $1)
echo \<table\>
echo \<tr\> \<\/tr\>
while IFS="," read -r $1; do
	echo \<tr\> $item \<\/tr\>

echo \<\/table\>
done


#for item in $(head -n1 $1); do
    #echo $item
#done