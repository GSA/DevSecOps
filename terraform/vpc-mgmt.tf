module "mgmt_vpc" {
  source = "github.com/terraform-aws-modules/terraform-aws-vpc"

  name = "${var.mgmt_vpc_name}"

  cidr = "${var.mgmt_vpc_cidr}"
  public_subnets  = ["${var.mgmt_public_subnet_cidrs}"]
  private_subnets = ["${var.mgmt_private_subnet_cidrs}"]
  database_subnets = ["${var.mgmt_database_subnet_cidrs}"]

  enable_nat_gateway = "${var.mgmt_nat_gateway}"
  enable_dns_hostnames = "${var.mgmt_dns_hostnames}"
  enable_dns_support = "${var.mgmt_dns_support}"

  azs = ["${var.aws_az1}", "${var.aws_az2}"]

  tags {
    "Terraform" = "true"
    "Repository" = "https://github.com/GSA/DevSecOps-Infrastructure"
  }
}

module "mgmt_vpc_flow_log" {
  source = "modules/vpc_flow_log"
  vpc_name = "${var.mgmt_vpc_name}"
  vpc_id = "${module.mgmt_vpc.vpc_id}"
}
