variable "provider_region" {
  description = "Select the region"
  default = "ap-south-1"
}

variable "ami_id" {
  description = "Ami-ID"
  default = "ami-002f6e91abff6eb96"
}

variable "instance_type" {
  description = "Instance Type"
  default = "t2.micro"
}

variable "instance_name" {
  description = "Name"
  default = "MY_Web_Server"
}
variable "key_name" {
    description = "keyName"
    default = "Bashion"
}
