provider "aws" {
  region = var.aws_region
}

# Gọi module VPC
module "vpc" {
  source = "./modules/vpc"

  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

# Khai báo Elastic IP cho NAT Gateway
resource "aws_eip" "nat" {
  vpc = true
}

# Gọi module NAT Gateway
module "nat_gateway" {
  source = "./modules/nat_gateway"

  public_subnet_id = module.vpc.public_subnet_id
  allocation_id    = aws_eip.nat.id  # Sử dụng EIP đã khai báo ở trên
}

# Gọi module Route Tables
module "route_tables" {
  source         = "./modules/route_tables"
  vpc_id         = module.vpc.vpc_id
  nat_gateway_id = module.nat_gateway.nat_gateway_id
}

# Gọi module Security Groups
module "security_groups" {
  source = "./modules/security_groups"
  ami    = var.ami
  vpc_id = module.vpc.vpc_id
  allowed_ssh_ip = var.allowed_ssh_ip
}

# Gọi module EC2
module "ec2" {
  source = "./modules/ec2"

  ami                = var.ami
  instance_type      = var.instance_type  # Đảm bảo biến này đã được định nghĩa trong module EC2
  public_subnet_id   = module.vpc.public_subnet_id
  private_subnet_id  = module.vpc.private_subnet_id
  public_sg_id       = module.security_groups.public_sg_id
  private_sg_id      = module.security_groups.private_sg_id
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr 
}
