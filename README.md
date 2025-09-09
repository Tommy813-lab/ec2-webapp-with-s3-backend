🌍 EC2 Web Application with S3 Backend
📌 Overview

This project delivers a cloud-native web application hosted on Amazon EC2, with backend storage and static content served from Amazon S3.

It’s designed as a hands-on, production-ready lab to showcase:

Infrastructure as Code (Terraform)

Deployment Automation (PowerShell)

Application Development (Node.js/Express)

Cloud-Native Storage Integration (Amazon S3)

CI/CD Expansion Potential (GitHub Actions ready)

🏗️ Architecture
flowchart TD
    A[Users] --> B[EC2: Web App]
    B -->|Static Files / Uploads| C[S3 Bucket]
    B --> D[App Logic: Routes, Controllers]
    D --> E[Business Logic / Models]


Frontend (EC2 + Express + Views) – Serves UI and handles requests.

Backend (Controllers + Models) – Executes app logic.

S3 Storage – Stores static assets, uploads, and media.

Terraform + PowerShell – Fully automates infra + lifecycle.

📂 Repository Layout
ec2-webapp-with-s3-backend/
├── app/                         # Application layer
│   ├── index.js
│   ├── routes/api.js
│   ├── controllers/
│   ├── models/
│   ├── views/
│   └── public/
│
├── infrastructure/
│   ├── terraform/               # IaC definitions
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── provider.tf
│   └── powershell/              # Infra automation
│       ├── deploy.ps1
│       ├── destroy.ps1
│       ├── setup-ec2.ps1
│       └── setup-s3.ps1
│
├── scripts/                     # Utility scripts
│   ├── start-app.ps1
│   ├── stop-app.ps1
│   ├── upload-to-s3.ps1
│   └── cleanup.ps1
│
├── docs/                        # Documentation
│   ├── architecture.png
│   ├── deployment.md
│   ├── usage.md
│   ├── ec2-setup.md
│   └── s3-setup.md
│
├── tests/                       # Tests (unit + integration)
│   ├── test_app.js
│   ├── test_s3_upload.js
│   └── test_ec2_connection.js
│
├── assets/                      # Logos + styling
├── config/                      # Config files
├── .gitignore
├── LICENSE
└── README.md

🚀 Deployment Guide
1️⃣ Clone the repository
git clone https://github.com/Tommy813-lab/ec2-webapp-with-s3-backend.git
cd ec2-webapp-with-s3-backend

2️⃣ Configure AWS
aws configure


Provide your Access Key, Secret Key, and default region.

3️⃣ Provision with Terraform
cd infrastructure/terraform
terraform init
terraform apply -auto-approve

4️⃣ Deploy Application
cd ../powershell
.\deploy.ps1

5️⃣ Access Application

Navigate to your EC2 public DNS or Elastic IP.

Static assets (CSS, images) are served via S3.

🧪 Testing
npm install
npm run test


test_app.js → App functionality

test_s3_upload.js → S3 upload validation

test_ec2_connection.js → EC2 health check

📖 Documentation

EC2 Setup Guide

S3 Setup Guide

Deployment Guide

Usage Scenarios

🔒 Security

EC2 secured with restricted Security Groups (HTTP/HTTPS only).

IAM Roles with least-privilege access for S3.

Sensitive configs stored in .env (excluded via .gitignore).

🛠️ Future Enhancements

CI/CD pipeline with GitHub Actions.

Dockerized deployment.

Load balancing with ALB.

CloudFront CDN for S3 assets.

📜 License

This project is licensed under the MIT License.
