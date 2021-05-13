#!/bin/bash

# Actualizar repositorios
yum update

# Instalar paquetes
echo "Instalando wget...";
echo "sudo yum install wget";
sudo yum install wget

echo "Descargando paquetes hamachi...";
echo "sudo wget http://www.vpn.net/installers/logmein-hamachi-2.1.0.203-1.x86_64.rpm";
sudo wget http://www.vpn.net/installers/logmein-hamachi-2.1.0.203-1.x86_64.rpm 

echo "Instalando hamachi...";
echo "sudo yum install logmein-hamachi-2.1.0.203-1.x86_64.rpm";
sudo yum install logmein-hamachi-2.1.0.203-1.x86_64.rpm	

echo "Login hamachi...";
echo "A continuacion ingresa el comando -> hamachi login"
