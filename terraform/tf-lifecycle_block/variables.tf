// Variables declaration
variable "project_id" {
  type        = string
  description = "The ID of the google project to house the resources."
}

variable "default_region" {
  type        = string
  description = "The default region to create the google cloud regional resources."
}

variable "default_zone" {
  type        = string
  description = "The default zone to create the google cloud zonal resources."
}

variable "vpc_name_01" {
  type        = string
  description = "The name of the VPC network being created."
}

variable "vpc_name_02" {
  type        = string
  description = "The name of the VPC network being created."
}

variable "vpc_name_03" {
  type        = string
  description = "The name of the VPC network being created."
}

variable "vpc_name_04" {
  type        = string
  description = "The name of the VPC network being created."
}

variable "auto_create_subnetworks" {
  type        = bool
  description = "When set to true, the network is created in auto subnet mode and it will create a subnet for each region automatically across the 10.128.0.0/9 address range."
}

variable "delete_default_routes" {
  type        = bool
  description = "If set to true, default routes (0.0.0.0/0) will be deleted immediately after network creation."
}

variable "app_version" {
  type        = string
  description = "The version of the deployed application."
  default     = "1.0.0"
}
