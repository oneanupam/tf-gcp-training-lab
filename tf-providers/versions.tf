// Terraform block to configure terraform and provider version
terraform {
  required_version = "~> 1.12.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.55.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.55.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
  }
}
