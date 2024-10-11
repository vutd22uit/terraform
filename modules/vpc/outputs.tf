# outputs.tf (VPC)

output "vpc_id" {
  value = aws_vpc.main.id
}
output "public_subnet_id" {
  value = subnet-0b9431a6387ed9875  
}

output "private_subnet_id" {
  value = subnet-0d869af8d08df39c8  
}
