
# VPC Outputs
output "vpc_id" {
  description = "ID của VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "ID của Public Subnet"
  value       = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  description = "ID của Private Subnet"
  value       = module.vpc.private_subnet_id
}

# NAT Gateway Outputs
output "nat_gateway_id" {
  description = "ID của NAT Gateway"
  value       = module.nat_gateway.nat_gateway_id
}

output "eip_id" {
  description = "Elastic IP ID của NAT Gateway"
  value       = module.nat_gateway.eip_id
}

# Route Tables Outputs
output "public_route_table_id" {
  description = "ID của Public Route Table"
  value       = module.route_tables.public_route_table_id
}

output "private_route_table_id" {
  description = "ID của Private Route Table"
  value       = module.route_tables.private_route_table_id
}

# Security Groups Outputs
output "public_sg_id" {
  description = "ID của Public Security Group"
  value       = module.security_groups.public_sg_id
}

output "private_sg_id" {
  description = "ID của Private Security Group"
  value       = module.security_groups.private_sg_id
}

# EC2 Instances Outputs
output "public_instance_id" {
  description = "ID của Public EC2 Instance"
  value       = module.ec2.public_instance_id
}

output "private_instance_id" {
  description = "ID của Private EC2 Instance"
  value       = module.ec2.private_instance_id
}
