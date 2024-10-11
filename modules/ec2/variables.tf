variable "ami" {
  description = "AMI cho EC2 instances"
  type        = string
}
variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro"  # Đặt giá trị mặc định là t2.micro
}
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
}
variable "public_subnet_id" {
  description = "ID của Subnet công cộng"
  type        = string
}

variable "private_subnet_id" {
  description = "ID của Subnet riêng tư"
  type        = string
}
variable "public_sg_id" {
  description = "ID của public security group"
  type        = string
}

variable "private_sg_id" {
  description = "ID của private security group"
  type        = string
}

