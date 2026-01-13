#!/bin/bash

# This assumes that the zip file has already been transported over 
# and is lovated in the current folder

#install unzip and unzip file
sudo apt install unzip
unzip nodejs20-se-test-app-2025.zip

# install Node version 20
sudo bash -c "curl -fsSL http://deb.nodesource.com/setup_20.x | bash -"
sudo apt install -y nodejs
node -v

# cd into app directory
cd nodejs20-se-test-app-2025/app

# install and run app
npm install
npm start app.js