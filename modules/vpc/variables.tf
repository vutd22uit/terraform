# variables.tf (VPC)

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block cho Public Subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block cho Private Subnet"
  type        = string
}
