
# terraform {
#   cloud {
#     organization = "ivyaaa"
#     workspaces {
#       name = "Terraform"
#     }
#   }
# }
provider "aws" {
  region = "ap-south-1"

}
resource "aws_instance" "webServer" {
  ami = "ami-05c179eced2eb9b5b"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0afd66285f3263c0a"]
  key_name = "BashionHost"
  tags = {
    Name = var.instance_name
  }
  
}