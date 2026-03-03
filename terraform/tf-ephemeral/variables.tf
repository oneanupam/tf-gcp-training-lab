// Variables declaration
variable "project_id" {} # bad practice

variable "default_region" {
  type        = string
  description = "The default region to create the google cloud regional resources."
}

variable "default_zone" {
  type        = string
  description = "The default zone to create the google cloud zonal resources."
}

variable "terraform_service_account" {
  type        = string
  description = "Terraform service account to execute the terraform code."
  # Make sure to give "roles/iam.serviceAccountTokenCreator" role to an identity (who will trigger the terraform code) on this service account for the impersonation to succeed.
}

variable "override_special_characters" {
  type        = string
  description = "value to override special characters in the password generation."
  default     = "#$&*"
  ephemeral   = true
}

variable "revision" {
  description = "The revision number of the secret to be used."
  type        = number
  default     = 1
}
