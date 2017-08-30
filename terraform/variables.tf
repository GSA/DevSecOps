variable "aws_region" {
  type = "string"
}
variable "aws_az1" {
  type = "string"
}
variable "aws_az2" {
  type = "string"
}
variable "mgmt_vpc_name" {
  type = "string"
}
variable "mgmt_vpc_cidr" {
  type = "string"
}
variable "mgmt_public_subnet_cidr" {
  type = "string"
}
variable "mgmt_private_subnet_cidr" {
  type = "string"
}
variable "mgmt_database_subnet_cidrs" {
  type = "list"
}
variable "mgmt_nat_gateway" {
  type = "string"
}
variable "mgmt_dns_hostnames" {
  type = "string"
}
variable "mgmt_dns_support" {
  type = "string"
}
variable "private_mgmt_zone_name" {
  type = "string"
}
