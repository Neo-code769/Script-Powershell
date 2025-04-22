#verif que la bonne demande a été faite
do{
	#enregistrement des variables
	$conv= [char](Read-Host "Si tu souhaites convertir les Celsius vers Fahrenheit tape f, si l'autre sens tape c")
	if (($conv -ne 'f') -and ($conv -ne 'c')){
		Write-Output "ce que tu as tapé ne correspond pas avec les conversions proposées"
	}
}while(($conv -ne 'f') -and ($conv -ne 'c'))
#enregistrement des variables
$temp= [int](Read-Host "Entre la température que tu souhaites convertir")

#conversion en Fahrenheit
if ($conv -eq 'f') {
	$res= ($temp * 9/5) +32
	Write-Output "$temp °C = $res °F"
} else {
	#conversion en Celsius
	$res= ($temp - 32) * 5/9
	Write-Output "$temp °F = $res °C"
}