# Nombre de la nueva máquina virtual
$vm = "Maquina prueba win"

# Crear la nueva máquina virtual con el nombre y tipo de sistema operativo windows 10
vboxmanage createvm --name $vm --ostype "Windows10_64" --register

# Creo un adaptador de red NAT para la VM
vboxmanage modifyvm $vm --nic1 nat

# Crear las 7 tarjetas de red adicionales
for ($i = 2; $i -le 8; $i++) {
    vboxmanage modifyvm $vm --nic$i intnet 
}

Write-Host "La máquina virtual '$vm' ha sido creada con 8 tarjetas de red."
