#!/bin/bash

# update and upgrade
sudo apt update -y
sudo apt upgrade -y

# install gnupg for the GPG keys and curl
sudo apt install gnupg curl
#sudo apt update -y

# add the GPG key whiock MongoDB packages are signed in with to 
# add --yes flag to overwrite the existing key
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor --yes

echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

#update again
sudo apt update -y

# install mongodb
sudo apt install -y mongodb-org=7.0.6 mongodb-org-database=7.0.6 mongodb-org-server=7.0.6 mongodb-mongosh=2.1.5 mongodb-org-mongos=7.0.6 mongodb-org-tools=7.0.6

# install sed to update ip
sudo apt install sed

# configure bind IP (not using sudo nano on mongod.conf)
sudo sed -i "s/bind/Ip: 127.0.0.1/bindIp: 0.0.0.0/" /etc/mongod.conf

# Potential permissions error:
#sudo chown -R mongodb:mongodb /var/lib/mongodb
#sudo chown mongobd:mongodb /tmp/mongodb-27017.sock

#start mongodb as its off by default
sudo systemctl start mongod

# enable mongodb as will not be enabled by default
sudo systemctl enable mongod

