variable "ami_id" {}
variable "instance_type" {}
variable "key_pair" {}
variable "subnet_id" {}
variable "security_group_ids" {
  type = list(string)
}
