#!/bin/bash

read -p "Ingrese el nombre del usuario: " user;
touch $user.ldif
echo "dn: uid=$user,ou=People,dc=apex,dc=com
objectClass: top
objectClass: account
objectClass: posixAccount
objectClass: shadowAccount
cn: $user
uid: $user" >> $user.ldif

FICHERO=passwd.txt
pass=""

if [ -f $FICHERO ]
then
   rm passwd.txt
   touch passwd.txt 
else
   touch passwd.txt
fi 

slappasswd >> passwd.txt


while IFS= read -r line
   do
	  pass=$line
   done < passwd.txt

echo "userPassword: $pass
shadowLastChange: 17058
shadowMin: 0
shadowMax: 99999
shadowWarning: 7
loginShell: /bin/bash" >> $user.ldif

FICHERO=count-user.txt
count=0

if [ -f $FICHERO ]
then
   while IFS= read -r line
   do
	  count=$(($line + 1))
   done < count-user.txt
   echo $count | tee count-user.txt
else
   touch count-user.txt
   count=1020
   echo "1020" >> count-user.txt
fi 

#echo "uidNumber: $count 
#gidNumber: $count

echo "uidNumber: $count
gidNumber: 100
homeDirectory: /home/$user" >> $user.ldif

read -p "Password LDAP: " mypass;
ldapadd -f $user.ldif -D cn=admin,dc=apex,dc=com -w $mypass

echo "Usuario Agregado"
 
