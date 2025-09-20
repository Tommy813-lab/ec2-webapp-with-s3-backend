<<<<<<< HEAD
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
=======
EC2 Web App with S3 Backend
Overview

This project demonstrates a basic web application hosted on an AWS EC2 instance, with a static asset backend stored in S3. It’s designed to showcase cloud architecture, automation, and integration of EC2 and S3 for scalable web applications.

Key Features:

EC2-hosted web application (Python/Node.js).

Static file storage in S3 with secure access.

Easy deployment instructions for beginners and intermediate AWS users.

Prerequisites

Before setting up the project, ensure you have the following installed:

AWS CLI: Install Guide

Python 3.9+ or Node.js 18+ (depending on your web app stack)

Git for cloning the repo

An AWS Account with permissions to:

Launch EC2 instances

Create and manage S3 buckets

Create IAM roles and attach policies

Architecture Diagram
          +----------------+
          |     Users      |
          +--------+-------+
                   |
                   v
          +----------------+
          |      EC2       |
          |  Web App Host  |
          +--------+-------+
                   |
           HTTP/HTTPS Requests
                   |
                   v
          +----------------+
          |      S3        |
          | Static Assets  |
          +----------------+

Setup Guide
Step 1: Clone the Repository
git clone https://github.com/Tommy813-lab/ec2-webapp-with-s3-backend.git
cd ec2-webapp-with-s3-backend

Step 2: Configure AWS CLI
aws configure


Provide your AWS Access Key ID, Secret Access Key, default region, and output format.

Step 3: Create S3 Bucket
aws s3 mb s3://my-webapp-bucket
aws s3 website s3://my-webapp-bucket --index-document index.html


⚠️ Make sure to replace my-webapp-bucket with a unique bucket name.

Upload static assets:

aws s3 cp ./static s3://my-webapp-bucket --recursive

Step 4: Launch EC2 Instance

Go to AWS Console → EC2 → Launch Instance

Choose Amazon Linux 2 (or Ubuntu 22.04)

Select an instance type (e.g., t2.micro for free tier)

Configure security group:

HTTP (80) and HTTPS (443) open

SSH (22) open to your IP only

Attach IAM Role with S3 Read/Write Access

Step 5: Deploy Web App to EC2

SSH into the instance:

ssh -i "my-key.pem" ec2-user@<EC2_PUBLIC_IP>


Clone your app:

git clone https://github.com/Tommy813-lab/ec2-webapp-with-s3-backend.git
cd ec2-webapp-with-s3-backend


Install dependencies:

Python Example:

python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python app.py


Node.js Example:

npm install
node app.js


Your app should now be accessible at http://<EC2_PUBLIC_IP>.

Example Usage

Visit your web app in the browser:

http://<EC2_PUBLIC_IP>


Expected behavior:

Static assets (images, JS, CSS) are loaded from S3

Dynamic content served from EC2 web app

Screenshots

Replace these with your own images

[Screenshot of web app homepage]
[Screenshot of S3 bucket with assets]
[Screenshot of EC2 instance running]

Security Best Practices

Use IAM roles for EC2 instead of hardcoding AWS credentials.

Block public access to S3 buckets whenever possible.

Restrict security group rules to only the necessary ports.


If you want, I can also draft a polished diagram image and integrate it into the README so it looks visually professional for GitHub. That makes it look really portfolio-ready.

Do you want me to d
>>>>>>> be78b480abc95951a057b8c0eca7a94022e7356c
