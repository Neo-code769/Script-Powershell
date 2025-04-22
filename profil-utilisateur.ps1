$nom= Read-Host "Quel est ton prénom et ton nom"
$age= [int](Read-Host "Quel est ton âge")

$naissance= (Get-Date).year - $age

Write-Output "Enchanté $nom tu es née en $naissance"