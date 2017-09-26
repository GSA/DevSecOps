data "template_file" "assume_role_policy" {
  template = "${file("${path.module}/assume_vpc_flow_logs_role_policy.json")}"
}

data "template_file" "policy" {
  template = "${file("${path.module}/devsecops_iam_flow_log_policy.json")}"
}

resource "aws_cloudwatch_log_group" "devsecops_flow_log_group" {
  name = "${var.vpc_name}-flow-log"
}

resource "aws_iam_role" "devsecops_iam_log_role" {
  name = "${var.vpc_name}-flow-log-role"
  assume_role_policy = "${data.template_file.assume_role_policy.rendered}"
}

resource "aws_iam_role_policy" "devsecops_log_policy" {
  name = "${var.vpc_name}-flow-log-policy"
  role = "${aws_iam_role.devsecops_iam_log_role.id}"
  policy = "${data.template_file.policy.rendered}"
}

resource "aws_flow_log" "devsecops_vpc_flow_log" {
  log_group_name = "${aws_cloudwatch_log_group.devsecops_flow_log_group.name}"
  iam_role_arn   = "${aws_iam_role.devsecops_iam_log_role.arn}"
  vpc_id         = "${var.vpc_id}"
  traffic_type   = "ALL"
}