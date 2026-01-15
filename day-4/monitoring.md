
# Monitoring

## Turn on Monitoring
![alt text](images/turnOnMonitoringAWS.png)

    - Add dashboard
![alt text](images/addNewDashboard.png)

    - Create New Button then:
![alt text](images/createNewMonitor.png)

    - Click add to Dashboard
    
    - You should end up with something like:

![alt text](images/dashboardAWS.png)

    - After about 60s, the monitoring graph will update.

## Set up an alarm

    - Go to the cloudwatch section of the AWS website and click 'all alarms' at the side.

![alt text](images/locateCloudwatch.png)

    - Click the orange 'Create Alarm' button in the top-right.
    - That will bring you to this page:

![alt text](images/createAlarmInitialPage.png)

    - Click select metric to bring you to this screen:

![alt text](images/selectMetric.png)

    - For this, I will go EC2 -> Across All Instances -> CPUUtilisation.

![alt text](images/cpuUtilisation.png)
![alt text](images/cpuUtilisationConfig.png)
![alt text](images/updatedCpuUtilConfig.png)
![alt text](images/configureActions.png)
![alt text](images/configureActionsUpdated.png)
![alt text](images/alarmDetails.png)
![alt text](images/finalAlarmConfig.png)

![alt text](images/inAlarm.png)

![alt text](images/inAlarmData.png)

    - Notifications:
    
![alt text](images/emailNotification.png)
![alt text](images/alarmSubNoti.png)

![alt text](images/aswAlarmNotification.png)