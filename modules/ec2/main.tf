resource "aws_instance" "public" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id  # Đây là biến cần phải khai báo
  security_groups = [var.public_sg_id]  # Đảm bảo biến này đã được khai báo

  tags = {
    Name = "Public EC2"
  }
}

resource "aws_instance" "private" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.private_subnet_id  # Đây cũng là biến cần phải khai báo
  security_groups = [var.private_sg_id]  # Đảm bảo biến này đã được khai báo

  tags = {
    Name = "Private EC2"
  }
}
