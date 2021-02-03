resource "aws_internet_gateway" "terraform-gateway" {
  vpc_id = aws_vpc.terraform-vpc.id
tags = {
    Name = "terraform-gateway"
  }
}