# 📅 Day 3 - Terraform 30 Days Challenge

**Name:** Chidera Ojimba – DevOps Engineer

---

## Activities Completed

- Set up AWS account
- Installed Terraform locally
- Installed and configured AWS CLI
- Installed Visual Studio Code (VSCode) and AWS plugin
- Configured VSCode to work with AWS
- Deployed a single server and a web server using Terraform

---

## Terraform Web Server Project

### Overview

This project demonstrates how to deploy a single Ubuntu web server on AWS using Terraform as Infrastructure as Code (IaC).

---

### Tasks Completed

#### ✅ Environment Setup

- Configured VSCode with AWS Toolkit and Terraform extensions
- Set up AWS CLI and credentials:
  ```bash
  aws configure
  ```
- Connected VSCode to AWS account

#### ✅ Infrastructure Deployment

- Created Terraform configuration for an Ubuntu EC2 instance in `main.tf`
- Deployed a t2.micro server (free tier eligible) using:
  ```bash
  terraform init
  terraform plan
  terraform apply
  ```
- Automated Nginx web server installation using a user data script
- Successfully accessed the web server via its public IP

---

## Technologies Used

- **Terraform** – Infrastructure as Code tool
- **AWS EC2** – Cloud compute service
- **Ubuntu** – Server operating system
- **Nginx** – Web server
- **VSCode** – Development environment with AWS integration

---

## Key Files

```
terraform-web-server/
├── main.tf      # Terraform configuration
└── README.md    # Setup process documentation
```

---

**Date:** July 01, 2025  
**Time:** 11:43 PM (WAT)
