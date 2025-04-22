#Demande à l'utilisateur
$nbr= [double](Read-Host "Saisie le nombre que tu souhaites et je t'affiche sa table de multiplication de 1 à 10 arraondi à 2")
#initialise un tableau
$res= @()

#remplir par les multiplication
for($i=1; $i -le 10; $i++){
	$res+= ($nbr * $i)
}
#Afficher la table arrondi
foreach($nb in $res){
	Write-Output ("{0:N2}" -f $nb)
}