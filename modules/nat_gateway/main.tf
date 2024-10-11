# main.tf (NAT Gateway)

resource "aws_nat_gateway" "nat" {
  subnet_id     = var.public_subnet_id  # Đây cần phải là ID của subnet công
  allocation_id = aws_eip.nat.id  # Đảm bảo rằng aws_eip.nat được khai báo trước đó
}


resource "aws_eip" "nat" {
  vpc = true
}
