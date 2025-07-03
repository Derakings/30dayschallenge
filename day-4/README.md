# 📅 Day 4 - Terraform 30 Days Challenge

**Name:** Chidera Ojimba – DevOps Engineer

---

## 📝 Task Description

**Activity**: 
   - Deploy a configurable web server using Terraform.
   - Deploy a clustered web server using Terraform.
   - Explore Terraform's documentation on providers, resource blocks, and workflow.



---

### Architecture

The deployed architecture is as follows:

1.  **Application Load Balancer (ALB):** Serves as the single point of contact for clients. It distributes incoming application traffic across multiple targets, such as EC2 instances.
2.  **Target Group:** Routes requests to one or more registered targets, such as EC2 instances. The load balancer uses the target group to determine where to route traffic.
3.  **EC2 Instances:** Two or more instances hosting the web application. The number of instances is configurable.
4.  **Security Group:** A virtual firewall that controls inbound and outbound traffic to the EC2 instances and the load balancer, allowing HTTP and SSH traffic.

---

### ✅ Activities Completed

-   **Infrastructure as Code:** Defined all AWS resources using Terraform.
-   **Modular Configuration:** Split the configuration into multiple files (`load-balancer.tf`, `security.tf`, `variables.tf`, etc.) for clarity.
-   **High Availability:** Deployed multiple EC2 instances using the `count` meta-argument.
-   **Load Balancing:** Created an Application Load Balancer to distribute traffic evenly across the instances.
-   **Automation:** Used a `user_data` script to automatically install and start an Nginx web server on each instance.
-   **Dynamic Configuration:** Used variables to allow for easy customization of the region, instance type, and instance count.

---

### 🚀 How to Deploy

1.  **Initialize Terraform:**
    ```bash
    terraform init
    ```
2.  **Preview the Plan:**
    ```bash
    terraform plan
    ```
3.  **Apply the Configuration:**
    ```bash
    terraform apply
    ```
4.  **Access the Web Server:**
    Use the `load_balancer_dns` output value from the `apply` command to access the web application in your browser.

---

### 📂 Key Files

```
day-4/
├── terraform-web-server.tf             # Main configuration, data sources, and EC2 instances
├── variables.tf        # Input variables (region, instance_type, instance_count)
├── output.tf           # Output values (load balancer DNS)
├── security.tf         # Security group definition
├── load-balancer.tf    # ALB, target group, and listener configuration
└── README.md           # This file
```

---

**Date:** July 03, 2025

**Time:** 2:11 AM