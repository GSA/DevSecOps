resource "aws_cloudwatch_log_group" "devsecops_log_group" {
  name = "${var.mgmt_flow_log_group_name}"
}

resource "aws_iam_role" "devsecops_iam_log_role" {
  name = "${var.devsecops_iam_log_role_name}"
  assume_role_policy = "${file("files/assume_vpc_flow_logs_role_policy.json")}"
}

resource "aws_iam_role_policy" "devsecops_log_policy" {
  name = "${var.devsecops_flow_log_policy}"
  role = "${aws_iam_role.devsecops_iam_log_role.id}"
  policy = "${file("files/devsecops_iam_flow_log_policy.json")}"
}

resource "aws_flow_log" "test_flow_log" {
  log_group_name = "${aws_cloudwatch_log_group.devsecops_log_group.name}"
  iam_role_arn   = "${aws_iam_role.devsecops_iam_log_role.arn}"
  vpc_id         = "${module.mgmt-vpc.vpc_id}"
  traffic_type   = "ALL"
}
