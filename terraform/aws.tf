provider "aws" {
  version = "~> 0.1"
  region = "${var.aws_region}"
}

terraform {
  backend "s3" {
  }
}
