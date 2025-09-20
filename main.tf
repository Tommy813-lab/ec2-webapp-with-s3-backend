module "charles_s3" {
  source      = "./modules/s3"
  bucket_name = "charles"
  environment = "prod"
}
