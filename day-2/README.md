 #  📅 Day 2 - terraform 30dayschallenge

**Name:** Chidera Ojimba- Devops engineer 

## ✅ Set up Terraform environment
 ### 1. Set up AWS account.
   **Create IAM user**
   - Sign in to the [AWS Management Console](https://console.aws.amazon.com).
   - Navigate to **IAM** > **Users** > **Add user**.
   - Create a user
   - Attach the **AdministratorAccess** policy
   - Download the **Access Key ID** and **Secret Access Key** (store securely).
   - (Optional) Enable Multi-Factor Authentication (MFA) for security. 

### ✅2. Install Terraform locally

- Download Terraform: [https://www.terraform.io/downloads](https://www.terraform.io/downloads)
- Extract the binary and add it to your system PATH.
- Verify installation:

```bash
terraform -version
```
### ✅ 3. Install and Configure AWS CLI
Steps:

Install the AWS CLI [here](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) 

Open terminal and configure:

```bash
aws configure
```
**output**
- AWS Access Key ID

- AWS Secret Access Key

- Default region

- Output format: json 

**✅ 4. Set Up Visual Studio Code (VSCode)**

Download and install [VSCode](https://code.visualstudio.com
)

Recommended Extensions:

`AWS Toolkit`
`Terraform`

`Prettier - Code Formatter`

Configure AWS Toolkit:

Open the AWS sidebar, click Connect to AWS,Enter your credentials to authenticate and set your default region.

**✅ 5. Deploy and single server and a web server using Terraform**

Deploying a Simple Web Server (EC2)

Terraform configuration in a .tf file

Deploy using 
```bash
terraform init
terraform plan
terraform apply
```

---
**Date:** June 30, 2025  
**Time:** 10:23 PM (WAT)
