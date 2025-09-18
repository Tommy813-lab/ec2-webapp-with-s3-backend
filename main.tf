resource "aws_instance" "web" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.public.id
  associate_public_ip_address = true
  iam_instance_profile        = aws_iam_instance_profile.ec2_profile.name

  user_data = file("${path.module}/ec2/user_data.sh")

  tags = {
    Name = "tommy-web-ec2"
  }
}

resource "aws_security_group" "web_sg" {
  name        = "tommy-web-sg"
  description = "Allow HTTP/SSH"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
