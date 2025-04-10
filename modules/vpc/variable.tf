variable "vpc_name" {
  description = "Name of VPC"
  type = string
  default = "MY_NewVPC"
}

variable "cidr_block" {
  description = "Cidr block"
  type = string
  default = "10.0.0.0/16"
}

variable "aws_internet_gateway" {
  default = "MY-NewIG"
}

variable "public_subnets_cidr" {
  description = "Cidr block of Public Subnet"
  default = "10.0.1.0/24"
}

variable "private_subnets_cidr" {
  description = "Cidr block of private subnet"
  default = "10.0.2.0/24"
}

variable "availabilityzone_for_public_subnet" {
    type = string
  default = "ap-south-1a"
}

variable "availabilityzone_for_private_subnet" {
    type = string
  default = "ap-south-1b"
}

variable "privateRoutetable" {
  type = string
  default = "MyNewPrivate_RT"
}

variable "PublicRouteTable" {
  type = string
  default = "MyNewPublic_RT"
}

variable "Nat_Gateway" {
  default = "MYNEW_NATGW"
}


