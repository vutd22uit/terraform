# variables.tf (NAT Gateway)

variable "public_subnet_id" {
  description = "ID của Public Subnet để tạo NAT Gateway"
  type        = string
}

variable "allocation_id" {
  description = "Allocation ID của Elastic IP cho NAT Gateway"
  type        = string
}
