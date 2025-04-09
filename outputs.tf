output "Ec2_InstanceId" {
  description = "ec2 id"
value = aws_instance.webServer.id

}
output "Publi_Ip_Address" {
  description = "Publi ip addess"
  value = aws_instance.webServer.public_ip
}

output "ami_id" {
  description = " AmiId"
  value = aws_instance.webServer.ami
}

output "vpc_security_group_ids" {
  description = " SecId"
  value = aws_instance.webServer.vpc_security_group_ids
}

output "vpc_ids" {
  description = "All Vpc ids"
  value = data.aws_vpcs.GetVpcs
  
}

data "aws_vpcs" "GetVpcs" {

  
}