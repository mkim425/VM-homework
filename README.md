# VM-homework

Assignment:
- create a new .sh script in 'covidModels/aws-vm-scripts/' that runs an R script sends a message to slack
- create a new EventBridge cron job to run the script at a specified time
- start the vm instance and sign into it by ssh, verify that your file was created

One approach: create a github repo for it on your own machine and then clone it on the VM under '/data'. 

Alternative approach: make a directory under the ec2-user hom 'dir /home/ec2-user', e.g., '/home/ec2-user/minsu-temp'.
