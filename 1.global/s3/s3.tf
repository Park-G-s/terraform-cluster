provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_s3_bucket" "terraform_state" {
    bucket = "s3_bucket_my_name"

    versioning {
      enabled = true
    }

    #lifecycle {
      #prevent_destroy = true
    #}
  
}

terraform {
  backend "s3"{
    bucket = "s3_bucket_my_name"
    key = "terraform.tfstate"
    region = "ap-northeast-2"
    encrypt = true
    aws_dynamodb_table = "terraform-lock"
  }
}

resource "aws_dynamodb_table" "terraform-lock" {
  name = "terraform-lock"
  hash_key = "LockID"
  read_capacity = 2
  write_capacity =2

  attribute{
    name = "LockID"
    type = "S"
  }
}


