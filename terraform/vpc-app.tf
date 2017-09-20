data "aws_region" "current" {
  current = true
}

module "app-vpc" {
  source = "github.com/terraform-community-modules/tf_aws_vpc"

  name = "${var.app_vpc_name}"

  cidr = "${var.app_vpc_cidr}"
  public_subnets  = ["${var.app_public_subnet_cidrs}"]
  private_subnets = ["${var.app_private_subnet_cidrs}"]
  database_subnets = ["${var.app_database_subnet_cidrs}"]

  enable_nat_gateway = "${var.app_nat_gateway}"
  enable_dns_hostnames = "${var.app_dns_hostnames}"
  enable_dns_support = "${var.app_dns_support}"

  azs = ["${var.aws_az1}", "${var.aws_az2}"]

  tags {
    "Terraform" = "true"
    "Repository" = "https://github.com/GSA/DevSecOps-Infrastructure"
  }
}
