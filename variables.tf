#ec2 insrance details
variable "instance_name" {
  description = "Value of the ec2 name tag"
  type = string
  default = "MyServer"
}

#VPC
variable "vpc_cidr_block" {
  description = "cidr block for VPC"
  default = "10.0.0.0/16"
}

#VPC Name
variable "vpc_name" {
  description = "Name of Vpc tag"
  default = "Ravi-Vpc"
}

#Private Subnet

variable "Private_subnet_CIDR" {
  description = "Enter a CIDR value"
  default = "10.0.1.0/24"
}

variable "Private_AvailabityZone" {
  description = "Availabilty Zone for Private Subnet"
  default = "ap-south-1a"
}

variable "Private_Subnet_Name" {
  description = "Value of Private subnet"
  default = "Ravi_Private_Subnet"
}

#Public Subnet
variable "Public_subnet_CIDR" {
  description = "Enter a CIDR value"
  default = "10.0.2.0/24"
}

variable "Public_AvailabilityZone" {
    description = "Availabilty Zone for Public Subnet"
    default = "ap-south-1b"
}

variable "Public_Subnet_Name" {
  description = "Value of Public Subnet"
  default = "Ravi_Public_Subnet"
}

#Internet Gateway Name
variable "IG_Name" {
  description = "value of IG_NAME"
  default = "Ravi-IG"
}

#Security Group
variable "SG_NAME" {
  description = "value of SG"
  default = "RAVI-SG"
}