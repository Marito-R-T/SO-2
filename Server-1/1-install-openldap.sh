#!/bin/bash

echo " " >> /etc/hosts
read -p "Ingrese la IP del servidor: " ipServidor;

echo "
$ipServidor server.apex.com server" >> /etc/hosts

echo "yum -y install openldap compat-openldap openldap-clients openldap-servers openldap-servers-sql openldap-devel net-tools nano";
yum -y install openldap compat-openldap openldap-clients openldap-servers openldap-servers-sql openldap-devel net-tools nano

echo "systemctl start slapd";
echo "systemctl enable slapd";
systemctl start slapd
systemctl enable slapd

netstat -antup | grep -i 389
 
