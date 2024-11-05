$origen = read-host "Escribe la ruta del directorio a copiar"
$destino = read-host "Escribe la ruta de destino"

If (Test-Path -Path $origen )#Confirmo si la carpeta existe
{
    Copy-Item -Path $origen\* -Destination $destino -Recurse #Copio todo el contenido de la carpeta
    Write-Host "Copia de seguridad completada con exito"
}
else {
    write-host "La carpeta a copiar no existe" #Si no existe mando un mensaje de error

}