resource "aws_key_pair" "terraform-key" {
  key_name = "aws-key"
  public_key = file("C://terraform//user-key//aws-key.pub")
}
