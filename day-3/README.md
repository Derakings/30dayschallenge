 #  📅 Day 3 - terraform 30dayschallenge

**Name:** Chidera Ojimba- Devops engineer 

 **Activity**: 
   - Set up your AWS account.
   - Install Terraform locally.
   - Install AWS CLI and configure it.
   - Install Visual Studio Code (VSCode) and add the AWS plugin.
   - Configure your VSCode to work with AWS.
   - Deploy and single server and a web server



  ## Terraform Web Server Project
### Overview
This project demonstrates deploying a single Ubuntu web server on AWS and using Terraform Infrastructure as Code (IaC).

### Task completed:

**✅ Environment Setup**

Configured VSCode with AWS Toolkit and Terraform extensions
Set up AWS CLI and credentials
```bash
aws configure
```
Connected VSCode to AWS account

 **✅ Infrastructure Deployment**

- Created Terraform configuration for Ubuntu EC2 instance in the main.tf file
- Deployed t2.micro server (free tier eligible):
```bash
terraform init
terraform plan
terraform apply
```

Automated Nginx web server installation using user data script.

Successfully accessed web server via public IP

**Technologies Used**

* Terraform - Infrastructure as Code tool
* AWS EC2 - Cloud compute service
* Ubuntu - Server operating system
* Nginx - Web server
* VSCode - Development environment with AWS integration

Key Files

terraform-web-server/

├── main.tf (terraform configuration)

             
└── README.md (setup process)   


---       

**Date:** July 01, 2025  
**Time:** 11:43 PM (WAT)
