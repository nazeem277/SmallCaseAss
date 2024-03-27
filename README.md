# SmallCaseAssignment
Used main.tf file for craeting an Ec2 instance with public IP and attaching kms encrypted EBS volume and dynamic AMI 
Run The cmd:-
terraform init
terraform plan
terraform apply

Install docker in ec2 using cmd "apt install docker.io -y"
created the docker file using vi editor in ec2 
Build the docker file using "docker build -t my-random-string-app ."
Run Using cmd "docker run -d -p 8081:8081 my-random-string-app which will create container in running state check using docker ps

