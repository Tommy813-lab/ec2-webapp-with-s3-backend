# EC2 Web Application with S3 Backend

## Overview
This project demonstrates a scalable, secure, and cost-effective web application architecture on AWS. Using Terraform for Infrastructure-as-Code (IaC), the setup includes:

- **Amazon EC2**: Hosts the web application.
- **Amazon S3**: Serves as the backend storage for static assets.
- **Amazon RDS**: Relational database service for dynamic data.
- **Amazon VPC**: Provides network isolation and security.
- **IAM**: Access controls and permissions management.

The architecture is designed for **high availability, scalability, and security**, suitable for production environments.

---

## Architecture Diagram
[Insert Diagram Here: EC2 → S3 → RDS → VPC → IAM]

yaml
Copy code

---

## Features
- **Scalability**: Auto-scaling EC2 instances to handle varying loads.
- **Security**: Private subnets, security groups, and IAM roles enforcing least privilege.
- **Cost Optimization**: S3 for static content delivery reduces EC2 load.
- **High Availability**: Multi-AZ deployments for EC2 and RDS.
- **Automation**: Complete infrastructure provisioning via Terraform.

---

## Prerequisites
- AWS Account
- Terraform 1.0+
- AWS CLI configured with proper credentials
- Text editor (VSCode recommended)

---

## Deployment Steps

### 1. Clone the Repository
```bash
git clone https://github.com/Tommy813-lab/ec2-webapp-with-s3-backend.git
cd ec2-webapp-with-s3-backend
2. Initialize Terraform
bash
Copy code
terraform init
3. Plan the Deployment
bash
Copy code
terraform plan
4. Apply the Configuration
bash
Copy code
terraform apply
5. Access the Application
After successful deployment, navigate to the EC2 public IP or domain provided by Terraform output.

Components
EC2 Instance
Runs a web server (Nginx/Apache)

Pulls static assets from S3

Handles dynamic requests and API calls

Scales based on traffic using Auto Scaling Groups

S3 Bucket
Stores static assets (HTML, CSS, JS, images)

Public read access for content delivery

Versioning enabled

Lifecycle policies for cost management

RDS Database
Multi-AZ deployment

Automated backups and snapshots

Security groups restrict access to EC2

VPC and Networking
Public & private subnets across multiple Availability Zones

Internet Gateway for public subnet access

NAT Gateway for private subnet internet access

Route Tables and Security Groups control traffic flow

IAM Roles and Policies
Allow EC2 to securely access S3 and RDS

Enforce least privilege

Audit access via CloudTrail

Best Practices
Version Control: Git for source code management

Environment Variables: Store sensitive info using AWS Secrets Manager

Monitoring: Implement CloudWatch for logs and alerts

Cost Management: Regularly review AWS Cost Explorer

Contributing
Contributions are welcome! Please fork the repo, create a new branch, and submit a pull request.

License
This project is licensed under the MIT License. See the LICENSE file for details.

Acknowledgments
AWS for cloud infrastructure

Terraform for IaC

Open-source community

yaml