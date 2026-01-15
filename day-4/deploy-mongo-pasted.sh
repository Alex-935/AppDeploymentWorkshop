#!/bin/bash

# update

sudo apt update -y

# upgrade

sudo apt upgrade -y

# install gnupg and curl

# gnupg - 

# curl - 

sudo apt install gnupg curl

# add the GPG key which Mongo DB packages are signed with to make sure they are authentic

# add --yes flag to overwirte the existing key

curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | \

   sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg \

   --dearmor --yes

# create our sources list file

echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

# update again

sudo apt update -y

# install mongodb

sudo apt install -y mongodb-org=7.0.6 mongodb-org-database=7.0.6 mongodb-org-server=7.0.6 mongodb-mongosh=2.1.5 mongodb-org-mongos=7.0.6 mongodb-org-tools=7.0.6

# install sed

sudo apt install sed

# configure bind IP

# (we used sudo nano mongod.conf yesterday)

sudo sed -i "s/bind/Ip: 127.0.0.1/bindIp: 0.0.0.0/" /etc/mongod.conf

# echo mongod --version

# start mongo db

# by default will not be started

sudo systemctl start mongod

# enable mongo db

# by default will not be enabled

sudo systemctl enable mongod