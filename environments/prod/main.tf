provider "aws" {
  region = var.provider_region 
}

# module "vpc" {
#     source = "../../modules/vpc"
# }

module "ec2" {
  source = "../../modules/ec2"
  ami_id = var.ami_id
  instance_type = var.instance_type
  instance_name = var.instance_name
  key = var.key_name
}
