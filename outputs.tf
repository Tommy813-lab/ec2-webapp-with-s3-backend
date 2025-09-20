<<<<<<< HEAD
output "charles_bucket_name" {
  value = module.charles_s3.charles_bucket_name
=======
output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.web_assets.bucket
>>>>>>> be78b480abc95951a057b8c0eca7a94022e7356c
}
