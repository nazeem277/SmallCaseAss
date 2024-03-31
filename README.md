# SmallCaseAssignment
Used main.tf file for creating an Ec2 instance with public IP and attaching kms encrypted EBS volume and dynamic AMI 
Run The cmd:-
terraform init
terraform plan
terraform apply

Install docker in ec2 using cmd "apt install docker.io -y"
created the docker file using vi editor in ec2 
Build the docker file using "docker build -t my-random-string-app ."
Run Using cmd "docker run -d -p 8081:8081 my-random-string-app which will create container in running state check using "docker ps"
Copy the public IP of running EC-2 machine and check on URL with 8081 port which will give the random String.

My Running App see here : http://3.132.215.36:8081/api/v1

