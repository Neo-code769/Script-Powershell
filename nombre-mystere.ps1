# Tirage aléatoire
$rdm = Get-Random -Minimum 1 -Maximum 101

# Demande initiale
$nbr = [int](Read-Host "🎲 J'ai choisi un nombre entre 1 et 100. Essaie de le deviner !")

# Compteur d'essais
$cptr = 1

# Boucle jusqu'à la bonne réponse
while ($nbr -ne $rdm) {
    if ($nbr -gt $rdm) {
        Write-Output "🔻 Trop grand !"
    } elseif ($nbr -lt $rdm) {
        Write-Output "🔺 Trop petit !"
    }

    $nbr = [int](Read-Host "Essaie encore !")
    $cptr++
}

# Résultat final
if ($cptr -eq 1) {
    Write-Output "🎉 Incroyable ! Tu as deviné du premier coup ! Le nombre était bien $rdm."
} else {
    Write-Output "🎉 Bravo ! Tu as trouvé le bon nombre ($rdm) en $cptr essais !"
}
