
sudo systemctl restart bacula-fd
sudo systemctl enable bacula-fd

sudo mkdir -p /bacula/restore
sudo chown -R bacula:bacula /bacula
sudo chmod -R 700 /bacula

