output "aws_az1" {
  value = "${var.aws_az1}"
}

output "aws_az2" {
  value = "${var.aws_az2}"
}

output "mgmt_vpc_name" {
  value = "${var.mgmt_vpc_name}"
}

output "mgmt_vpc_id" {
  value = "${module.mgmt-vpc.vpc_id}"
}

output "mgmt_vpc_cidr_block" {
  value = "${module.mgmt-vpc.vpc_cidr_block}"
}

output "mgmt_public_subnet_ids" {
  value = "${module.mgmt-vpc.public_subnets}"
}

output "mgmt_public_subnet_cidrs" {
  value = "${var.mgmt_public_subnet_cidrs}"
}

output "mgmt_private_subnet_ids" {
  value = "${module.mgmt-vpc.private_subnets}"
}

output "mgmt_private_subnet_cidrs" {
  value = "${var.mgmt_private_subnet_cidrs}"
}

output "mgmt_database_subnet_ids" {
  value = "${module.mgmt-vpc.database_subnets}"
}

output "mgmt_database_subnet_cidrs" {
  value = "${var.mgmt_database_subnet_cidrs}"
}

output "mgmt_database_subnet_group_name" {
  value = "${module.mgmt-vpc.database_subnet_group}"
}

output "mgmt_default_security_group_id" {
  value = "${module.mgmt-vpc.default_security_group_id}"
}

output "private_mgmt_dns_zone_name" {
  value = "${aws_route53_zone.private-mgmt.name}"
}

output "app_vpc_name" {
  value = "${var.app_vpc_name}"
}

output "app_vpc_id" {
  value = "${module.app_vpc.vpc_id}"
}

output "app_vpc_cidr_block" {
  value = "${module.app_vpc.vpc_cidr_block}"
}

output "app_public_subnet_ids" {
  value = "${module.app_vpc.public_subnets}"
}

output "app_public_subnet_cidrs" {
  value = "${var.app_public_subnet_cidrs}"
}

output "app_private_subnet_ids" {
  value = "${module.app_vpc.private_subnets}"
}

output "app_private_subnet_cidrs" {
  value = "${var.app_private_subnet_cidrs}"
}

output "app_database_subnet_ids" {
  value = "${module.app_vpc.database_subnets}"
}

output "app_database_subnet_cidrs" {
  value = "${var.app_database_subnet_cidrs}"
}

output "app_database_subnet_group_name" {
  value = "${module.app_vpc.database_subnet_group}"
}

output "app_default_security_group_id" {
  value = "${module.app_vpc.default_security_group_id}"
}
