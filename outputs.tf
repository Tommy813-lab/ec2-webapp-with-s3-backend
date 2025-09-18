output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.web_assets.bucket
}
