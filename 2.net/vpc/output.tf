output "terraform-subnet-c-id" {
  value = aws_subnet.terraform-subnet-c.id
}

output "terraform-subnet-a-id" {
  value = aws_subnet.terraform-subnet-a.id
}

output "terraform-subnet-b-id" {
  value = aws_subnet.terraform-subnet-b.id
}
 
output "terraform-sg-id" {
  value = aws_security_group.terraform-sg.id
}
