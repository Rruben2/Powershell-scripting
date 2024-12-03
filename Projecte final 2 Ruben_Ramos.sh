#!/bin/bash

# Nombre de la nueva máquina virtual
vm="Maquina_prueba_win"

# Crear la nueva máquina virtual con el nombre y tipo de sistema operativo Windows 10
VBoxManage createvm --name "$vm" --ostype "Windows10_64" --register

# Configurar un adaptador de red NAT para la VM
VBoxManage modifyvm "$vm" --nic1 nat

# Crear las 7 tarjetas de red adicionales como redes internas
for i in {2..8}; do
    VBoxManage modifyvm "$vm" --nic$i intnet
done

echo "La máquina virtual '$vm' ha sido creada con 8 tarjetas de red."
