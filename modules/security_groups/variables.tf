# variables.tf (EC2)

variable "ami" {
  description = "AMI cho EC2 instances"
  type        = string
}
variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}
variable "allowed_ssh_ip" {
  description = "Allowed IP for SSH access"
  type        = string
}
