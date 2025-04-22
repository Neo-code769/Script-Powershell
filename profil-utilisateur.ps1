$nom = Read-Host "Quel est ton prénom et ton nom"
$age = [int](Read-Host "Quel est ton âge")
$genre = Read-Host "Quel est ton genre (Homme/Femme/Autre)"

$naissance = (Get-Date).Year - $age

switch ($genre.ToLower()) {
    "femme" {
        $phrase = "Enchantée $nom, tu es née en $naissance"
    }
    "homme" {
        $phrase = "Enchanté $nom, tu es né en $naissance"
    }
    default {
        $phrase = "Enchanté(e) $nom, tu es né(e) en $naissance"
    }
}

Write-Output $phrase
