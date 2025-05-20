// Terraform block to configure terraform and provider version
terraform {
  required_version = "~> 1.12.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.35.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 6.35.0"
    }
  }
}
