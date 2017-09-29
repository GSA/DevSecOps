variable "aws_az1" {
  type = "string"
  description = "Must be a valid AWS availability zone"
}
variable "aws_az2" {
  type = "string"
  description = "Must be a valid AWS availability zone"
}
variable "mgmt_vpc_name" {
  type = "string"
}
variable "mgmt_vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "mgmt_public_subnet_cidrs" {
  default = ["10.0.0.0/24"]
}
variable "mgmt_private_subnet_cidrs" {
  default = ["10.0.1.0/24"]
}
variable "mgmt_database_subnet_cidrs" {
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}
variable "mgmt_nat_gateway" {
  default = "true"
  description = "boolean, as a lower-case string"
}
variable "mgmt_dns_hostnames" {
  default = "true"
  description = "boolean, as a lower-case string"
}
variable "mgmt_dns_support" {
  default = "true"
  description = "boolean, as a lower-case string"
}
variable "private_mgmt_zone_name" {
  type = "string"
}
variable "mgmt_flow_log_group_name" {
  default = "vpc_mgmt_flow_logs"
  description = "log group name for the management VPC"
}
variable "app_vpc_name" {
  type = "string"
}
variable "app_vpc_cidr" {
  default = "10.1.0.0/16"
}
variable "app_public_subnet_cidrs" {
  default = ["10.1.0.0/24"]
}
variable "app_private_subnet_cidrs" {
  default = ["10.1.1.0/24"]
}
variable "app_database_subnet_cidrs" {
  default = ["10.1.101.0/24", "10.1.102.0/24"]
}
variable "app_nat_gateway" {
  type = "string"
  default = "true"
}
variable "app_dns_hostnames" {
  type = "string"
  default = "true"
}
variable "app_dns_support" {
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
