sudo yum install bacula-client
date +%s | sha256sum | base64 | head -c 33 ; echo
sudo nano /etc/bacula/bacula-fd.conf

#Director {
#  Name = bacula-dir
#  Password = "Y2Q5ODUyMWM0YTFhYjA3NTcwYmU5OTA4Y"
#}

#FileDaemon {                          # this is me
#  Name = ClientHost-fd
#  FDAddress = client_private_ip # en nuestro caso fue 25.7.96.199
#  FDport = 9102                  # where we listen for the director
#  WorkingDirectory = /var/spool/bacula
#  Pid Directory = /var/run
#  Maximum Concurrent Jobs = 20
#}

#Messages {
#  Name = Standard
#  director =  bacula-dir = all, !skipped, !restored
#}

sudo bacula-fd -tc /etc/bacula/bacula-fd.conf

sudo systemctl restart bacula-fd

sudo systemctl enable bacula-fd

sudo mkdir -p /bacula/restore
sudo chown -R bacula:bacula /bacula
sudo chmod -R 700 /bacula
