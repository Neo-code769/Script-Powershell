#demande à l'utilisateur et enregistrement de la phrase
$phrase= [String](Read-Host "Ecris une phrase de ton choix et je te renvoie le nombre de mots de celle ci")
#initialisation d'un compteur
#vérifier si la chaine est vide
if ([string]::IsNullOrWhiteSpace($phrase)) {
	#renvoie le resultat
	Write-Output "Tu n'as pas écris de phrase !"
} else {
	# Découpe la phrase en mots, en supprimant les vides
    $mots = $phrase.Split(" ", [System.StringSplitOptions]::RemoveEmptyEntries)
    
    # Compte les mots
    $nbMots = $mots.Count
	#renvoie le resultat
	Write-Output "Ta phrase conttient $nbMots mots"
}
	