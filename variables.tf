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
