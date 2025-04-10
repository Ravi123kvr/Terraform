
#VPC CREATION
resource "aws_vpc" "vpc" {
    cidr_block = var.cidr_block
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
        Name = var.vpc_name
    }
}


#PRIVATE SUBNET
resource "aws_subnet" "PrivateSubnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.private_subnets_cidr
  availability_zone = var.availabilityzone_for_public_subnet

  tags = {
    Name = "${var.vpc_name}-private"
  }
}

#PUBLIC SUBNET
resource "aws_subnet" "PublicSubnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.public_subnets_cidr
  availability_zone = var.availabilityzone_for_public_subnet
  tags = {
    Name = "${var.vpc_name}-public"
  }
}

#INTERNET GATEWAY
resource "aws_internet_gateway" "MY_IG" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = var.aws_internet_gateway
  }
}

#PUBLIC ROUTE TABLE
resource "aws_route_table" "Publi_RT" {
  vpc_id = aws_vpc.vpc.id
  route = {
    destination_ipv6_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.MY_IG
  }
  tags = {
    Name = var.PublicRouteTable
  }
}

#PRIVATE ROUTE TABLE
resource "aws_route_table" "Private_RT" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = var.privateRoutetable
  }
  route = {
    destination_ipv6_cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.My_NatGW
  }
}

resource "aws_nat_gateway" "My_NatGW" {
  subnet_id = aws_vpc.subnet.PublicSubnet
  connectivity_type = "Public"
  tags = {
    Name = var.Nat_Gateway
  }
}




