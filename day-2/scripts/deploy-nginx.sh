#!/bin/bash

# update packages
sudo apt update -y
sudo apt upgrade -y

#install nginx
sudo apt install nginx

#restart nginx
sudo systemctl restart nginx

#enable nginx - make nginx start process
sudo systemctl enable nginx
