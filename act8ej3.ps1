$tipop = Read-Host "Indica el tipo de puerto (TCP,UDP,OTROS)".ToUpper()

if ($tipop -eq "TCP") {
    Write-Host "Conexiones TCP:"
    Get-NetTCPConnection | Where-Object State -eq "Listen" | Format-Table LocalAddress, LocalPort, State
}
elseif ($tipop -eq "UDP"){
    Write-Host "Conexions UDP:"
    Get-NetUDPEndpoint | Format-Table LocalAddress, LocalPort
}
elseif ($tipop -eq "OTROS"){
    Write-Host "Conexiones TCP:"
    Get-NetTCPConnection | Where-Object State -eq "Listen" | Format-Table LocalAddress, LocalPort, State
    Write-Host "Conexions UDP:"
    Get-NetUDPEndpoint | Format-Table LocalAddress, LocalPort
}
else {
Write-Host "No hay ningun puerto con ese tipo"
}