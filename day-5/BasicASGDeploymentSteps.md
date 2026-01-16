Basic ASG creation steps:

1. Go to Auto Scaling Groups
2. Click button Create an Auto Scaling group
3. On screen 1 Choose launch template or configuration:
     Name: something like se-name-app-asg
     Select the launch template: filter by your first name, then select the one you created above       (if you only have an AMI, you will need to create a Launch template first using the AMI)
     At the bottom, click the Next button
4. On screen 2 Choose instance launch options:
    In the Network section:
         VPC: leave as the default-vpc
         Availability zones and subnets: put a check mark next to the 3 different availability zones           in the Ireland region:
         eu-west-1a (DevOpsStudent default 1a)
         eu-west-1b (DevOpsStudent default 1b)
        eu-west-1c (DevOpsStudent default 1c)
    In the Instance type requirements section:
       leave it as is
    At the bottom, click the Next button
5. On screen 3 Configure advanced options:
     In the Load balancing section:
         Select Attach to a new load balancer
     In the Attach to a new load balancer section:
         Load balancer type: select Application Load Balancer
         Load balancer name: give it an appropriate name e.g. se-name-app-asg-lb
         Load balancer scheme: select Internet-facing
         In Listeners and routing:
            Protocol: notice the load balancer will be listening for HTTP
            Port: leave as 80
            Default routing:
            For HTTP routing, select Create a target group
            New target group name: add tg (tg=target group) to what's already there, so something              like se-name-app-asg-lb-tg
    In VPC Lattice integration options section - leave it as is
    In Health checks section:
            Tick Turn on Elastic Load Balancing health checks
            Health check grace period: leave it as 300 seconds
          In Additional settings: leave it as is
          At the bottom, click the Next button
6. On screen 4 Configure group size and scaling policies:
     In Group size - optional section:
       Desired capacity: change to 2  
       Minimum capacity: change to 2
       Maximum capacity: change to 3
    In Scaling policies - optional section:
        Select option Target tracking scaling policy
        Metric type: leave it as Average CPU utilization
        Target value: leave it as 50 (meaning 50%)
    In Instance scale-in protection section:
        This is not needed, leave as it is (unchecked)
    At the bottom, click the Next button
7. On screen 5 Add notifications:
    Leave it as it is
    At the bottom, click the Next button
8. On screen 6 Add tags:
     Click Add tag button:
     Key: Name
     Value: se-name-app-asg
❗ Important! If you don't add this tag, the instances created by the ASG will not be named!
     At the bottom, click the Next button
9. On screen 7 Review:
       Check over the details
        At the bottom, click the Create Auto Scaling group button
 10. Check your Auto Scaling Group is working
      Access the app via the Load Balancer:
       Go to Load Balancers
       Filter for your load balancer
       Click on it to go to its Details
       Copy the DNS name and paste it into a browser tab
       Check the app frontpage works (and posts page if connected to database)
11. See what happens if we delete a VM created by the Auto Scaling Group
      Terminate one of the ASG's VMs 
      Refresh the page immediately after to see what happens - the page may temporarily not          work while the Load Balancer works out that something has happened to one of the                  targets in this target group


12. Delete the Auto Scaling Group
      This is the one way to stop those VMs from being created.
       Delete the load balancer
       Delete the target group (if the load balancer is gone already it will say None associated in         the Load balancer column)
       Delete the ASG







