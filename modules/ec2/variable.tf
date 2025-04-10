variable "ami_id" {
  description = "ami_id"
   default =  "ami-002f6e91abff6eb96"
}

variable "key" {
  description = "keyname"
  default = "s3"
}

variable "instance_type" {
  description = "Ec2 instance type"
  type = string
  default = "t2.micro"
}

variable "instance_name" {
  description = "instance name"
   default = "My_WebServer"
}



