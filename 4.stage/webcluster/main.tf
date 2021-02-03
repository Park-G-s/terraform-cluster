provider "aws" {
    region = "ap-northeast-2"
}

module "web_cluster" {
  source = "C:\\terraform\\3.module\\webcluster"

cluster_name = var.cluster_name
instance_type = var.instance_type
min_size = var.min_size
max_size = var.max_size
}