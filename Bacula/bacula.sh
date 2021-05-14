#Instalar Bacula, MariaDB y otros componentes
echo "Instalando Bacula y MariaDB";
sudo yum install -y bacula-director bacula-storage bacula-console bacula-client mariadb-server

#Empezar el servicio de MariaDB
echo "Empezando MariaDB";
sudo systemctl start mariadb

/usr/libexec/bacula/grant_mysql_privileges
/usr/libexec/bacula/create_mysql_database -u root
/usr/libexec/bacula/make_mysql_tables -u bacula
sudo mysql_secure_installation

#Entrar a mysql
read -p "Ingrese el password del usuario del nuevo user bacula: " password;
echo "Entrando a mysql";
mysql -u root -p


UPDATE mysql.user SET Password=PASSWORD($password) WHERE User='bacula';
FLUSH PRIVILEGES;
exit

#Habilitar el mariadb
echo "Elegir la ruta mysql";
sudo systemctl enable mariadb

sudo alternatives --config libbaccats.so



m
