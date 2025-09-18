EC2 Web Application with S3 Backend
Overview

This project demonstrates a scalable, secure, and cost-effective web application architecture on AWS. Utilizing Terraform for Infrastructure-as-Code (IaC), the setup includes:

Amazon EC2: Hosts the web application.

Amazon S3: Serves as the backend storage for static assets.

Amazon RDS: Manages relational database services.

Amazon VPC: Ensures network isolation and security.

IAM: Manages access controls and permissions.

The architecture is designed for high availability, scalability, and security, making it suitable for production environments.

Architecture Diagram

Features

Scalability: Auto-scaling EC2 instances to handle varying loads.

Security: Private subnets, security groups, and IAM roles to enforce least privilege.

Cost Optimization: Utilizes S3 for static content delivery, reducing EC2 load.

High Availability: Multi-AZ deployments for EC2 and RDS.

Automation: Complete infrastructure provisioning via Terraform.

Prerequisites

AWS Account

Terraform 1.0+

AWS CLI configured with appropriate credentials

Text editor (e.g., VSCode)

Deployment Steps

Clone the Repository:

git clone https://github.com/Tommy813-lab/ec2-webapp-with-s3-backend.git
cd ec2-webapp-with-s3-backend


Initialize Terraform:

terraform init


Plan the Deployment:

terraform plan


Apply the Configuration:

terraform apply


Access the Application:

After successful deployment, navigate to the provided EC2 public IP or domain to access the web application.

Components
EC2 Instance

The EC2 instance runs a web server (e.g., Nginx or Apache) serving the frontend application. It is configured to:

Pull static assets from the S3 bucket.

Handle dynamic requests and API calls.

Scale based on traffic using Auto Scaling Groups.

S3 Bucket

The S3 bucket stores static assets such as HTML, CSS, JavaScript, and image files. It is configured with:

Public read access for static content delivery.

Versioning enabled for asset management.

Lifecycle policies for cost management.

RDS Database

Amazon RDS is used for relational data storage. It is configured with:

Multi-AZ deployment for high availability.

Automated backups and snapshots.

Security groups restricting access to EC2 instances.

VPC and Networking

The Virtual Private Cloud (VPC) setup includes:

Public and private subnets across multiple Availability Zones.

Internet Gateway for public subnet access.

NAT Gateway for secure internet access from private subnets.

Route Tables and Security Groups to control traffic flow.

IAM Roles and Policies

IAM roles and policies are defined to:

Allow EC2 instances to access S3 and RDS resources securely.

Enforce least privilege access control.

Audit and monitor access using CloudTrail.

Best Practices

Version Control: Use Git for source code management.

Environment Variables: Store sensitive information using AWS Secrets Manager.

Monitoring: Implement CloudWatch for logging and monitoring.

Cost Management: Regularly review AWS Cost Explorer for optimization opportunities.

Contributing

Contributions are welcome! Please fork the repository, create a new branch, and submit a pull request with your changes.

License

This project is licensed under the MIT License - see the LICENSE
 file for details.

Acknowledgments

AWS for providing the cloud infrastructure.

Terraform for Infrastructure-as-Code capabilities.

Open-source community for continuous learning and inspiration.