#!/bin/bash

read -p "nombre del usuario que desea eliminar: " name;
ldapdelete -W -D "cn=admin,dc=apex,dc=com" "uid=$name,ou=People,dc=apex,dc=com"
