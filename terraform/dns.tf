resource "aws_route53_zone" "private-mgmt" {
  name = "${var.private_mgmt_zone_name}"
  // this argument makes it a Private Hosted Zone
  vpc_id = "${module.mgmt_vpc.vpc_id}"
}