variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default     = 80
}

variable "key_pair" {
  default = "aws-key"
}

variable "cluster_name"{
  description ="the name to use for all cluster resources"
  default ="web-stg"
}

variable "instance_type"{
  description ="The type of EC2 to run"
  default ="t2.micro"
}

variable "min_size"{
  description ="the min_num of ec2 in the ASG"
  default ="2"
}

variable "max_size"{
  description ="the max_num of ec2 in the ASG"
  default ="3"
}