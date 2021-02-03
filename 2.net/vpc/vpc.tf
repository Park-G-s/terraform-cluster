resource "aws_vpc" "terraform-vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    "Name" = "terraform-vpc"
  }
}
resource "aws_subnet" "terraform-subnet-c" {
  vpc_id = aws_vpc.terraform-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"
}

resource "aws_subnet" "terraform-subnet-a" {
  vpc_id = aws_vpc.terraform-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "terraform-subnet-b" {
  vpc_id = aws_vpc.terraform-vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-northeast-2b"
}