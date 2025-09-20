variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "charles"   # default name can be overridden
}

variable "environment" {
  description = "Environment name (dev, prod, etc.)"
  type        = string
  default     = "dev"
}
