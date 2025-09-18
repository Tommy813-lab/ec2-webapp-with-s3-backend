#!/bin/bash
yum update -y
amazon-linux-extras install -y nginx1
systemctl enable nginx
systemctl start nginx

# Install AWS CLI
yum install -y awscli

# Sync S3 bucket to /usr/share/nginx/html
aws s3 sync s3://${s3_bucket_name} /usr/share/nginx/html

# Restart Nginx
systemctl restart nginx
