#VPC
resource "aws_vpc" "Ravi_vpc" {
    cidr_block = var.vpc_cidr_block
    enable_dns_support = true
    enable_dns_hostnames = true
    instance_tenancy = "default"
    tags = {
        Name = var.vpc_name
    }
}

#VPC PRIVATE SUBNET
resource "aws_subnet" "Ravi_vpc_Private_Subnet" {
    vpc_id = aws_vpc.Ravi_vpc.id
    cidr_block = var.Private_subnet_CIDR
    availability_zone = var.Private_AvailabityZone
    map_public_ip_on_launch = false
    tags = {
        Name = var.Private_Subnet_Name
    }
}

#VPC PRIVATE SUBNET
resource "aws_subnet" "Ravi_vpc_Public_Subnet" {
    vpc_id = aws_vpc.Ravi_vpc.id
    cidr_block = var.Public_subnet_CIDR
    availability_zone = var.Public_AvailabilityZone
    map_public_ip_on_launch = true
    tags = {
      Name = var.Public_Subnet_Name
    }
}

#Create Internet_GateWay
resource "aws_internet_gateway" "Ravi_IG" {
  vpc_id = aws_vpc.Ravi_vpc.id
  tags = {
    Name = var.IG_Name
  }
}

resource "aws_security_group" "SG" {
  vpc_id = aws_vpc.Ravi_vpc.id

  ingress{
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks =[]
    prefix_list_ids = []
    security_groups = []
    self = false
    description = "allows ssh from anywhere"
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1" #allows all the traffic
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks =[]
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    description = "allows all Outbound traffic"
  }
    tags = {
     Name = var.SG_NAME
    }
}

#NAT GATEWAY
# resource "aws_nat_gateway" "Nat_Gate" {
  
# }
