EC2 Web App with S3 Backend


High-level architecture diagram showing EC2 instances, S3 backend, and networking.

Table of Contents

Project Overview

Architecture

Prerequisites

Setup Instructions

Usage Examples

Security Best Practices

Contributing

License

Project Overview

This repository provides an Infrastructure-as-Code (IaC) implementation to deploy a web application on AWS EC2 with an S3 backend. The goal is to build a scalable, maintainable, and secure architecture with automation via Terraform.

The project demonstrates:

Provisioning EC2 instances with proper networking and security groups

Using S3 for static storage or backup purposes

Applying IAM roles with least privilege

Modular Terraform code for easy maintenance and scalability

Ready-to-integrate CI/CD pipelines

Architecture

Below is a high-level view of the infrastructure:

              ┌─────────────────────┐
              │     Users/Clients    │
              └─────────┬───────────┘
                        │ HTTP/HTTPS
                        ▼
             ┌─────────────────────┐
             │   AWS EC2 Web App    │
             │  Auto-scaled (Optional)│
             └─────────┬───────────┘
                        │
         ┌──────────────┴──────────────┐
         │                             │
 ┌───────────────┐             ┌───────────────┐
 │   AWS S3 Bucket│◄───────────►│  Static Assets│
 │   (Backend)    │             └───────────────┘
 └───────────────┘

Prerequisites

Before deploying, ensure you have:

An AWS account with IAM permissions to create EC2, S3, IAM, Security Groups, and VPC resources

Terraform v1.5+ installed: Terraform Installation

AWS CLI configured: aws configure

Git installed

Setup Instructions
1. Clone the Repository
git clone https://github.com/Tommy813-lab/ec2-webapp-with-s3-backend.git
cd ec2-webapp-with-s3-backend

2. Configure Variables

Create a terraform.tfvars file or export environment variables:

aws_region     = "us-east-1"
ec2_instance_type = "t3.micro"
key_pair_name  = "my-aws-key"

3. Initialize Terraform
terraform init

4. Plan Terraform Deployment
terraform plan

5. Apply Terraform Deployment
terraform apply


⚠️ Confirm yes when prompted to provision the resources.

6. Access the Web Application

Once the deployment is complete, Terraform will output the public IP or DNS of the EC2 instance. Open it in your browser:

http://<EC2_PUBLIC_IP>

Usage Examples
Interact with the Web App
curl http://<EC2_PUBLIC_IP>/api/status


Expected response:

{
  "status": "ok",
  "message": "Web app is running!"
}

Upload or Fetch from S3
aws s3 cp ./localfile.txt s3://<S3_BUCKET_NAME>/remote.txt
aws s3 cp s3://<S3_BUCKET_NAME>/remote.txt ./downloaded.txt

Security Best Practices

Use IAM roles with least privilege

Restrict Security Group ingress to only necessary ports (HTTP/HTTPS, SSH if needed)

Enable S3 bucket encryption

Monitor logs with AWS CloudWatch and CloudTrail

Keep sensitive variables in .tfvars or environment variables

Contributing

Contributions are welcome! Here's how to help:

Fork the repository

Create a new branch: git checkout -b feature/your-feature

Make your changes

Test your changes with terraform validate and terraform plan

Commit and push your branch: git push origin feature/your-feature

Open a Pull Request

License

This project is licensed under the MIT License. See LICENSE
 for details.
