
## When launching instance

    - Load the node20-app image machine instance but add the following:

    - In advanced settings fill in the following

```
#!/bin/bash

sleep 15

cd /home/ubuntu

cd se-sparta-test-app
cd app

export DB_HOST=mongodb://34.240.123.50 :27017/posts

sudo npm install

node seeds/seed.js

pm2 start app.js
```


![alt text](images/advancedSettings.png)

    - Launch the MOngoDB instance to grab the IP address and add it to the environment variable

![alt text](images/userDataAdvanced.png)

    - We can do this as we already have the apps installed on the instance


![alt text](images/methodsOfBooting.png)

- Load Balancer moves things from an overloaded VM to a non-overloaded vm

![alt text](images/loadBalancing.png)

    - ASG: Auto-Scaling Group

    -When two CPUs hit 50%, a new VM would be spun up using an AMI that the ASG would use for an additional vm.
    We then launch the image and distribute the workload



## Different configuration patterns

![alt text](images/methodsOfBooting.png)

### 3: User Data -> Run Commands -> Run app with PM2:

    - How this differs from the other 2 methods is we have:

        - A working database machine, with all necessary set-up, that has been stopped (suspended)
            - This means, we simply need to run the instance to have the server run again

        - A working app machine with the appalready installed.
            - This means to get it working, we just need to run commands to update the environment variable "DB_HOST" with the database VMs new IP, reseed the db, and start the app with pm2 (already installed).
        
        - When booting up the VM, we can give commands to be run on start up to AWS using advanced settings and this will be ran automatically.
        - This means we don't need to use Git Bash/SSH at all and it is done completely remotely.

        - The only commandsx of note are:
            - sleep 15: Gives the vm time to boot up properly and ensure all dependencies are running before executing any further commands

            - AWS will run the commands at root level by default. Therefore we cd /home/ubuntu so we are running at user level.

```
#!/bin/bash
sleep 15

cd /home/ubuntu

cd se-sparta-test-app/app
export DB_HOST=mongodb://34.240.123.50 :27017/posts
sudo npm install
node seeds/seed.js
pm2 start app.js
```

    - Steps:
        1. Restart suspended DB VM and grab its IP.
        2. Run an app VM and put the above script in the advanced settings.
        3. Wait for it to execute and go to http://<ip>:3000/posts.