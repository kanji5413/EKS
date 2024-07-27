variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "profile" {
  description = "AWS profile"
  type        = string
  default     = "default"
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "public_cidrs" {
  description = "A list of public subnet CIDR blocks"
  type        = list(string)
}

variable "azs" {
  description = "A list of availability zones"
  type        = list(string)
}

variable "business_division" {
  description = "The business division"
  type        = string
}

variable "environment" {
  description = "The environment"
  type        = string
}

variable "private_cidrs" {
  description = "A list of public subnet CIDR blocks"
  type        = list(string)
}

variable "database_cidrs" {
  description = "A list of public subnet CIDR blocks"
  type        = list(string)
}

variable "IGW_name" {
  description = "The name of the Internet Gateway"
  type        = string
}

variable "Nat" {
  description = "The name of the NAT Gateway"
  type        = string
}

variable "Secuirty-group" {
  description = "The name of the Security Group"
  type        = string
}

variable "public_routing_Table" {
  description = "The name of the public routing table"
  type        = string
}

variable "private_routing_Table" {
  description = "The name of the private routing table"
  type        = string
}

variable "public_subnet_tags" {
  description = "Custom tags for public subnets"
  type        = map(string)
  default     = {}
}

variable "private_subnet_tags" {
  description = "Custom tags for public subnets"
  type        = map(string)
  default     = {}
}

variable "database_subnet_tags" {
  description = "Custom tags for public subnets"
  type        = map(string)
  default     = {}
}
