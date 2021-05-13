#!/bin/bash
sudo yum install dovecot -y
sudo systemctl enable dovecot
sudo systemctl start dovecot
setenforce 0
systemctl restart httpd
systemctl restart dovecot
sudo service dovecot restart
