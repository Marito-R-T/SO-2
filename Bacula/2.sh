#Instalar Bacula, MariaDB y otros componentes
echo "Creando directorios para los backups";
sudo mkdir -p /bacula/backup /bacula/restore
sudo chown -R bacula:bacula /bacula
sudo chmod -R 700 /bacula



