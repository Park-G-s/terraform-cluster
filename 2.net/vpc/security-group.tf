resource "aws_security_group" "terraform-sg" {
  vpc_id      = aws_vpc.terraform-vpc.id
  name        = "terraform-sg"
  tags = { Name = "terraform-sg" }
}
