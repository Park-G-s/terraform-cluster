resource "aws_key_pair" "terraform-key" {
  key_name = "aws-key"
  public_key = file("경로")
}
