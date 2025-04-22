#demande à l'utilisateur le nombre d'articles 
do{
	$nbrArticle= [int](Read-Host "Combien d'articles souhaites tu ajouter")
	if ($nbrArticle -lt 0) {
		Write-Output "Le nombre d'artilce ne peut pas être inférieur à 0 !`nSi tu souhaites quitter entre 0"
	} elseif ($nbrArticle -eq 0) {
		exit
	}
}while ($nbrArticle -lt 0)
#initialise un compteur
$cpt= 1
#initialise la liste d'article
$lArticle= @()
#remplis les noms des articles dans la liste
for ($i=1; $i -le $nbrArticle; $i++){
	$lArticle+= [String](Read-Host "Ecris le nom de l'article $i")
}

#affiche la liste d'articles numérotés
foreach ($article in $lArticle) {
	Write-Output "article $cpt : $article"
	$cpt++
}

