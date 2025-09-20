<<<<<<< HEAD
variable "ami_id" {}
variable "instance_type" {}
variable "key_pair" {}
variable "subnet_id" {}
variable "security_group_ids" {
  type = list(string)
=======
variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "ec2_ami" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0c94855ba95c71c99" # Amazon Linux 2 in us-east-1
}

variable "key_name" {
  description = "Existing key pair name for SSH"
  default     = "tommy-key"
}

variable "s3_bucket_name" {
  description = "S3 bucket name for static assets"
  default     = "tommy-webapp-assets-12345"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
>>>>>>> be78b480abc95951a057b8c0eca7a94022e7356c
}
