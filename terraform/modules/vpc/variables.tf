variable "aws_az1" {
  type = "string"
  description = "Must be a valid AWS availability zone"
}
variable "aws_az2" {
  type = "string"
  description = "Must be a valid AWS availability zone"
}
variable "region" {
  default = "us-east-1"
}
variable "private_vpc_zone_name" {
  type = "string"
}
variable "vpc_name" {
  type = "string"
}
variable "vpc_cidr" {
  default = "10.1.0.0/16"
}
variable "app_public_subnet_cidrs" {
  default = ["10.1.0.0/24", "10.2.0.0/24"]
}
variable "app_private_subnet_cidrs" {
  default = ["10.1.1.0/24", "10.2.1.0/24"]
}
variable "database_subnet_cidrs" {
  default = ["10.1.101.0/24", "10.2.101.0/24"]
}
variable "create_database_subnet_group" {
  default = "true"
}
variable "enable_nat_gateway" {
  type = "string"
  default = "true"
}
variable "enable_dns_hostnames" {
  type = "string"
  default = "true"
}
variable "enable_dns_support" {
  type = "string"
  default = "true"
}
variable "app_flow_log_group_name" {
  default = "vpc_app_flow_logs"
}
variable "devsecops_iam_log_role_name" {
  default = "vpc_flow_log_role"
  description = "name for the IAM role that will be attached to the VPC logging"
}
variable "devsecops_flow_log_policy" {
  default = "vpc_flow_log_policy"
  description = "name for the log policy to attach to the VPCs"
}