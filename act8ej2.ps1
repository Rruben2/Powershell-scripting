$puerto = 443
$servidor = "google.com"

Write-Host "Comprobando conexion"

$conexion = Test-NetConnection -ComputerName $servidor -Port $puerto

if ($conexion.TcpTestSucceeded) {
Write-Host "La conexion esta en funcionamiento"
}
else
{
Write-Host "Error en la conexion TCP"
}