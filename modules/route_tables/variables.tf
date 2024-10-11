# variables.tf (Route Tables)

variable "vpc_id" {
  description = "ID của VPC"
  type        = string
}

variable "nat_gateway_id" {
  description = "ID của NAT Gateway"
  type        = string
}
