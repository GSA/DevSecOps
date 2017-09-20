resource "aws_route53_zone" "private-mgmt" {
  name = "${var.private_mgmt_zone_name}"
  // this argument makes it a Private Hosted Zone
  vpc_id = "${module.mgmt-vpc.vpc_id}"
}

resource "aws_route53_zone" "public-app" {
  name = "${var.public_app_zone_name}"
}