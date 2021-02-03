provider "aws" {
    region = "ap-northeast-2"
}

module "webserver_vpc" {
  source = "C:\\terraform\\net\\vpc"
}
