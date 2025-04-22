# Demande à l'utilisateur
$nbr = [double](Read-Host "Saisie le nombre dont tu veux voir la table de multiplication (de 1 à 10, arrondi à 2 décimales)")

Write-Output "`nVoici la table de $nbr :`n"

# Affiche la table directement sans stocker dans un tableau
for ($i = 1; $i -le 10; $i++) {
    $resultat = [math]::Round($nbr * $i, 2)
    Write-Output ("{0} x {1} = {2:N2}" -f $nbr, $i, $resultat)
}

Write-Output "`nFin de la table."
