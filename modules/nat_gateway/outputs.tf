# outputs.tf (NAT Gateway)

output "nat_gateway_id" {
  description = "ID của NAT Gateway"
  value       = aws_nat_gateway.nat.id
}

output "eip_id" {
  description = "Elastic IP ID của NAT Gateway"
  value       = aws_eip.nat.id
}
