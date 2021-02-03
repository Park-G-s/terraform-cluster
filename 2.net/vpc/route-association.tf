resource "aws_route_table_association" "terraform-route-association" {
  subnet_id      = aws_subnet.terraform-subnet-c.id
  route_table_id = aws_route_table.terraform-route-table.id
}

resource "aws_route_table_association" "terraform-route-association2" {
  subnet_id      = aws_subnet.terraform-subnet-a.id
  route_table_id = aws_route_table.terraform-route-table.id
}

resource "aws_route_table_association" "terraform-route-association3" {
  subnet_id      = aws_subnet.terraform-subnet-b.id
  route_table_id = aws_route_table.terraform-route-table.id
}