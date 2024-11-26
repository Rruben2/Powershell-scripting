Write-Host "1.Iniciar VM"
Write-Host "2.Apagar VM"
Write-Host "3.Guardar estado de VM"
$opcion= Read-Host "Eliga una opcion"

if ($opcion -eq 1)
{
$vm = Read-Host "Eliga el nombre de la maquina a encender"
 
vboxmanage startvm $vm

}
if ($opcion -eq 2)
{
$vm = Read-Host "Eliga el nombre de la maquina a apagar"
 
vboxmanage stopvm $vm

}

if ($opcion -eq 3)
{
$vm = Read-Host "Eliga el nombre de la maquina a guardar estado"
 
vboxmanage controlvm $vm savestate

}

