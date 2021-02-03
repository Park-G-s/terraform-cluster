provider "aws" {
    region = "ap-northeast-2"
}

module "webcluster_vpc" {
  source = "C:\\terraform\\2.net\\vpc"
}

