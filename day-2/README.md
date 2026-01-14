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


------------------------------------------------------------------------------------------------

Goal for today
Now we have deployed a simple package it is time to deploy a custom application.
We will be deploying the "Sparta App".
Now this app is very basic, it runs using NodeJS and has only a few features. But it does the job for us as we learn, practice and test things.
If we used a more complex custom application it would often make new concepts too difficult to retain. So the idea is to keep the app simple, as we can focus on the how and why.
The goal today is to deploy the custom app and have it's homepage visible to the internet.
As a bonus we may even be able to start putting the steps into a bash script.

Usually you will either be one of the developers of the app or will be given an app by a developer.
If you are given an app you NEED to make sure to get as clear a set of instructions as possible in order to deploy the app properly.
DISCUSSION
Examples of things you need to find out:
What operating system?
What dependencies?
What commands are needed?
How to set up connections etc.
Does the app need compiling/installing etc.


The dependencies for Sparta App are:
App code
Linux (Ubuntu)
Nginx
NodeJS 20.x



Creating an instance for our sparta app

Delete the instance we currently have
Make a new instance, with the same settings except:
The sparta app runs on port 3000 (a free port)
Make a new SG (se-name-app-sg) and give it the rules:
Port 22 (source = 0.0.0.0/0)
Port 80 (source = 0.0.0.0/0)
Port 3000 (source = 0.0.0.0/0)
Assign the SG to your instance
Launch the instance
Log in to the instance
Run your Nginx script again


Now we can progress
Getting the app code onto your EC2 instance

Hints:
Use the scp command
You will need your SSH private key

The SCP command stands for "Secure Copy".
It uses SSH to transfer files from one server to another. We will use it to send out app code from out local machine to our EC2 instance, securely.
SCP is installed on Windows and Mac systems by default, much like SSH.
Open a terminal (GitBash, Terminal etc.)
Navigate to the folder that has your app code folder
Recommend to make the folder a zip
Run the folllowing command:
scp -i ~/.ssh/aws-name-key-pair.pem ./sparta-app-code.zip ubuntu@IP-ADDRESS:/home/ubuntu/

Breaking down the command:
scp -i ~/.ssh/aws-name-key-pair.pem
Use the scp command and use our ssh private key to identify ourselves
./sparta-app-code.zip
The file/folder we want to copy over

ubuntu@IP-ADDRESS:/home/ubuntu/
Where to send the file or folder
Note the directory we want to put it in at the end

After the command finished check it is on your EC2 instance by running ls to list files.
Make sure you are in /home/ubuntu

Unzipping the file
A package to unzip files does not come with ubuntu by default, so we need to install one and use it:

# install unzip
sudo apt install unzip -y
# unzip file
sudo unzip sparta-app-code.zip

Now check again with ls, you should have a directory called "folder-name" that contains the app contents.
Installing remaining dependencies
Many applications require a specific version of a language. In our case the Sparta App requires NodeJS version 20 of some kind.
The latest version of nodejs is now newer than this. So if we just asked Linux to install node, it would install a newer version.
This means we need to specify exactly which version to download before we ask it it install nodejs.


sudo bash -c "curl -fsSL https://deb.nodesource.com/setup_20.x | bash -" && \
sudo apt install -y nodejs
node -v

The above code tells Linux exactly where to go to get NodeJS and then when we ask it to install it, it gets the version we want.
Then we check to version to verify it worked as expected
Navigate to the right folder (directory)

Use cd to go into the folder that contains the app code
e.g. cd sparta-app-code
We need to then go into the folder that contains the code itself. Nodejs uses a file app.js as the main application file. We run this file and we run the app.
cd into app
Double check you are in the right place
(run ls and check the files there)
run pwd and make sure you are in se-test-app/app or similar
Run the app

First we need to install required dependencies of Nodejs so the app can run
This is similar to Python packages
The devs have set up this for us, all we need to do is run npm install
(You may need to add sudo as it requires greater permissions to be run
Why? It changes the environment and can cause conflcits.)

Then we just need to start it
Run npm start app.js
The app should run on port 3000
Note: It take away your ability to run commands
This is called running in the "foreground". Not ideal so we will look to improve this later.
Check the app is deployed on your public IP, and thus visible to the internet

Go to "Instance Summary" in your browser
Grab the public IP address of your instance
Paste it into a new tab
It should show the Nginx homepage.
NOTE: Be careful, check your browser doesn't try to use https!

Why does it not show the app?
The app is running on port 3000, not 80 (the default)
Add :3000 to the ip address
All being well, the Sparta app will show!


































