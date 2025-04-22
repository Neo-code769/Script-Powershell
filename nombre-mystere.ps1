#nombre aléatoire
$rdm= Get-Random -Minimum 1 -Maximum 101

#demander à l'utilisateur
$nbr= [int](Read-Host "Je tire un nombre aléatoire entre 1 et 100 ! Entre le nombre que tu penses être le bon  ")

#enregistrement du compteur d'essai
$cptr= 1

#condition pour indiquer si trop grand ou trop petit
while ($nbr -ne $rdm){
	if ($nbr -gt $rdm) {
		Write-Output "Oups ton nombre est trop grand !"
	} elseif ($nbr -lt $rdm) {
		Write-Output "Oups ton nombre est trop petit !"
	} 
	
	$nbr= [int](Read-Host "retentes ta chances")
	$cptr++
}

#résultat final
if ($cptr -eq 1) {
    Write-Output "🎉 Bien joué ! Le nombre était bien $rdm. Tu l'as trouvé du premier coup !"
} else {
    Write-Output "🎉 Bien joué ! Le nombre était bien $rdm. Tu l'as trouvé en $cptr essais !"
}