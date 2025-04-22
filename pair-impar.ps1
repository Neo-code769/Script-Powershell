#demande à l'utilisateur combien de nombres il veut vérifier
$nbr= [int](Read-Host "Combien de nombres souhaites tu vérifier")
#initialise une variable pour stocker les nombres à verifier
$verif= 0
#pour chaque nombre je demande le nombre qu'il souhaite vérifier
for($i=1;$i -le $nbr; $i++) {
	$verif= [int](Read-Host "entre le nombre $i que tu souhaites modifier")
	#vérifie si le nombre est pair ou impair est renvoie le résultat
	if ($verif % 2 -eq 0) {
		Write-Output "Ce nombre est pair"
	}else {
		Write-Output "Ce nombre est impair"
	}
}