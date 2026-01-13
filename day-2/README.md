// write to text editor
sudo nano deploy-nginx.sh

//change permissions and execute
sudo chmod +x deploy-nginx.sh
./delpoy-nginx.sh


Open a blank text file on your instance

    sudo nano deploy-nginx.sh

    nano is a basic text editor

paste contents of our script from VS Code to open file

save the file by pressing Ctrl + X

    y

    Enter

 

run: cat deploy-nginx.sh

./deploy-nginx.sh

If you are denied permission to run the file you can try:

    Adding permissions to execute by running the command:

    sudo chmod +x deploy-nginx.sh

    And running the previous command again



Our App Dependencies
    -App code
    -Ubuntu Linux
    -Nginx / apache
    -NodeJS 20.x


//Transfer files
scp -i Key-Pairs FileToTransfer PublicIPAddress
scp -i ~/se-alex-key-pair.pem ./nodejs20-se-test-app-2025.zip ubuntu@54.155.131.60:~
scp -i ~/.ssh/se-alex-key-pair.pem ~/Downloads/nodejs20-se-test-app-2025.zip ubuntu@54.155.131.60:~

// unzip file
sudo apt install unzip
unzip nodejs20-se-test-app-2025.zip

//install version 20
sudo bash -c "curl -fsSL http://deb.nodesource.com/setup_20.x | bash -"
sudo apt install -y nodejs
node -v

cd nodejs20-se-test-app-2025/app

npm install
npm start app.js

Go to: http://54.155.131.60:3000/

rm -rf folder // removes all files in folder && folder





































