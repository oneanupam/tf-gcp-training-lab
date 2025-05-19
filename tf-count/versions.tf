# Terraform block to configure terraform and provider version
terraform {
  required_version = "~> 1.9.8"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.11.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 6.11.0"
    }
  }
}
