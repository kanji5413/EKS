output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.main.cidr_block
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = aws_subnet.public-subnets[*].id
}

output "public_subnet_azs" {
  description = "The availability zones of the public subnets"
  value       = aws_subnet.public-subnets[*].availability_zone
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = aws_subnet.private-subnets[*].id
}

output "private_subnet_azs" {
  description = "The availability zones of the private subnets"
  value       = aws_subnet.private-subnets[*].availability_zone
}

output "database_subnet_ids" {
  description = "The IDs of the database subnets"
  value       = aws_subnet.database-subnets[*].id
}

output "database_subnet_azs" {
  description = "The availability zones of the database subnets"
  value       = aws_subnet.database-subnets[*].availability_zone
}

output "vpc_name" {
  description = "Name of the VPC"
  value       = var.vpc_name
}

output "public_route_table_id" {
  description = "The ID of the public route table"
  value       = aws_route_table.terraform-public.id
}

output "private_route_table_id" {
  description = "The ID of the private route table"
  value       = aws_route_table.terraform-private.id
}

output "eip_id" {
  description = "The ID of the Elastic IP for the NAT Gateway"
  value       = aws_eip.eip-nat.id
}

output "nat_gateway_id" {
  description = "The ID of the NAT Gateway"
  value       = aws_nat_gateway.nat-gw.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.default.id
}

output "security_group_id" {
  description = "The ID of the Security Group"
  value       = aws_security_group.POC-Allow.id
}

/*
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
*/
