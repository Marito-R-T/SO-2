#!/bin/bash

# Designar nombre cliente
read -p "Ingrese el nombre del cliente: " nombre;
echo "sudo hamachi set-nick $nombre";
sudo hamachi set-nick $nombre

# Registrando correo electronico 
read -p "Ingrese su correo electronico LogMeIn: " correo;
echo "sudo hamachi attach $correo";
sudo hamachi attach $correo

# Registrando red hamachi
read -p "Ingrese el ID de la red hamachi: " red;
echo "sudo hamachi join $red";
sudo hamachi join $red
