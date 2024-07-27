output "vpc_id" {
  description = "The ID of the VPC"
  value      = aws_vpc.main.id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value      = aws_vpc.main.cidr_block
}

# Encapsulate subnets in a single output for better organization
output "subnets" {
  description = "Information about all subnets"
  value = {
    public: {
      ids:    aws_subnet.public_subnets[*].id
      azs:    aws_subnet.public_subnets[*].availability_zone
    },
    private: {
      ids:    aws_subnet.private_subnets[*].id
      azs:    aws_subnet.private_subnets[*].availability_zone
    },
    database: {
      ids:    aws_subnet.database_subnets[*].id
      azs:    aws_subnet.database_subnets[*].availability_zone
    }
  }
}

output "vpc_name" {
  description = "Name of the VPC"
  value      = var.vpc_name
}

output "security_group_id" {
  description = "ID of the security group"
  value      = aws_security_group.POC-Allow.id
}

output "nat_gateway_id" {
  description = "ID of the NAT gateway"
  value      = aws_nat_gateway.nat-gw.id
}

output "public_route_table_id" {
  description = "ID of the public route table"
  value      = aws_route_table.terraform-public.id
}

output "private_route_table_id" {
  description = "ID of the private route table"
  value      = aws_route_table.terraform-private.id
}

output "internet_gateway_id" {
  description = "ID of the internet gateway"
  value      = aws_internet_gateway.default.id
}
