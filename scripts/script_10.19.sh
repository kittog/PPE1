# !/ usr / bin / bash
if [ $ # - ne 1 ]
then
echo " ce programme demande un argument "
exit
fi
# trouver URL valides 

FICHIER_URLS=$1
OK=0 # VAR. URLS VALIDES
NOK=0 # VAR. URLS NON VALIDES
while read -r LINE ; # -r : recursive
do
echo " la ligne : $LINE "
if [[ $LINE =∼ " ^ https ?:// " ]] # condition sur regex. =~ match w regex
then
echo " ressemble à une URL valide "
OK=$( expr $OK + 1) # incrémentation +1
else
echo " ne ressemble pas à une URL valide "
NOK=$( expr $NOK + 1) # incrémentation +1
fi
done < $FICHIER_URLS
echo " $OK URLs et $NOK lignes douteuses "