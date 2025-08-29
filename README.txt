 EC2 Web App with S3 Backend

Hands-on AWS project simulating a production-ready web application.
This lab shows how to host a web app on EC2 while storing static content (images, files) in S3. It’s perfect for aspiring Cloud Support Engineers or Cloud Developers to understand real-world architecture, storage best practices, and web serving on AWS.

📌 Scenario

You are a Cloud Engineer at a mid-size e-commerce company. The marketing team launched a campaign that requires a web application to serve product pages dynamically, but static assets (images, downloads) should be served from S3 for speed and scalability.

Your tasks:

Deploy a web application on an EC2 instance running Apache.

Store static files in S3 buckets with proper permissions.

Connect the web app to S3 so it fetches content dynamically.

Ensure the system is scalable, secure, and maintainable.

This setup simulates production infrastructure and teaches you cloud-native design.

🧱 Architecture Diagram
          +-------------------+
          |   User Traffic    |
          |  (Web Browser)    |
          +---------+---------+
                    |
                    ▼
          +-------------------+
          |   EC2 Web Server  |
          |  (Apache + App)   |
          +---------+---------+
                    |
        Requests for static files
                    ▼
          +-------------------+
          |     S3 Bucket     |
          |  (Images, Assets) |
          +-------------------+


Logic Flow:

User opens the web page → request hits the EC2 instance.

EC2 Apache server handles dynamic content.

When the web page needs static assets (images, downloads), it fetches them from S3.

Users receive fast content thanks to S3’s optimized delivery.

🧰 Features & Tools
Feature	Description
EC2 Hosting	Runs the web application using Apache
S3 Backend	Stores static content such as images, PDFs, and JS files
IAM Roles & Policies	EC2 securely accesses S3 via IAM role without embedding keys
Scalable Architecture	S3 scales automatically, EC2 can be replaced with an Auto Scaling Group later
Hands-on Learning	Practical exposure to connecting EC2 apps with S3 storage
🚀 Deployment Steps
1️⃣ Launch EC2 Instance
aws ec2 run-instances \
  --image-id ami-0abcdef1234567890 \
  --instance-type t2.micro \
  --key-name my-key \
  --security-groups my-sg


SSH into the instance:

ssh ec2-user@<EC2_PUBLIC_IP>

2️⃣ Install Apache & Dependencies
sudo yum update -y
sudo yum install -y httpd php
sudo systemctl start httpd
sudo systemctl enable httpd

3️⃣ Set Up S3 Bucket

Create an S3 bucket:

aws s3 mb s3://my-webapp-assets


Upload static content:

aws s3 cp ./assets s3://my-webapp-assets/ --recursive

4️⃣ Connect EC2 to S3

Attach an IAM role to EC2 with S3 read access.

Modify your web app to fetch static files from S3:

<img src="https://my-webapp-assets.s3.amazonaws.com/logo.png" />

5️⃣ Test the Application

Open the public EC2 URL in your browser.

Verify the app loads dynamic pages and static assets from S3.

Confirm no permission errors—everything should render smoothly.

✅ Success Criteria

Web app loads correctly from EC2.

Static content is served directly from S3.

IAM roles securely allow EC2 access without credentials in code.

Architecture is production-friendly and scalable.

📚 Skills Demonstrated

EC2 provisioning and Apache setup

S3 bucket configuration and static content hosting

Connecting web apps to cloud storage securely

Understanding cloud-native architecture patterns

Hands-on AWS infrastructure deployment

💡 Real-World Use Cases

Hosting static assets for web apps

E-commerce product images and PDFs

Any system requiring dynamic app + scalable storage backend

Portfolio project to showcase AWS deployment and architecture 