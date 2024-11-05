$ruta = read-host "Introduca la ruta C:\"
$archivo = read-host "Introduzca el nombre del archivo o carpeta"

$localizacion= Get-ChildItem -Path $ruta -Filter $archivo #Creo localizacion para encontrar el archivo en la ruta deseada

If ($localizacion) {
write-host "Archivo o directorio encontrado en"$localizacion.FullName #Si el archivo esta en la ruta escribo la ruta del archivo
}
else{
write-Host "No se encontro el" $archivo "en" $ruta
}