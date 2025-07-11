// Variables declaration
variable "project_id" {
  type        = string
  description = "The ID of the Google Cloud project to house the resources."
}

variable "default_region" {
  type        = string
  description = "The default region to create the Google Cloud regional resources."
}

variable "default_zone" {
  type        = string
  description = "The default zone to create the Google Cloud zonal resources."
}

variable "app_version" {
  type        = string
  description = "The version of the deployed application."
  default     = "1.0.0"
}
