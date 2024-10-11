# variables.tf 

variable "aws_region" {
  description = "The AWS region where resources will be deployed"
  type        = string
}

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

variable "ami" {
  description = "AMI cho EC2 instances"
  type        = string
}

variable "allowed_ssh_ip" {
  description = "Địa chỉ IP được phép truy cập SSH vào Public EC2"
  type        = string
}

variable "allocation_id" {
  description = "Allocation ID của Elastic IP cho NAT Gateway"
  type        = string
  default     = null  
}
