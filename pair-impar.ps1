# Demande combien de nombres l'utilisateur veut vérifier
$nbr = [int](Read-Host "Combien de nombres souhaites-tu vérifier ?")

# Boucle sur chaque nombre
for ($i = 1; $i -le $nbr; $i++) {
    $verif = [int](Read-Host "Entre le nombre $i que tu souhaites vérifier")
    
    # Vérifie si le nombre est pair ou impair et affiche le résultat
    if ($verif % 2 -eq 0) {
        Write-Output "$verif est un nombre pair."
    } else {
        Write-Output "$verif est un nombre impair."
    }
}
