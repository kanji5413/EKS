# terraform-modules/eks/variables.tf
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}
