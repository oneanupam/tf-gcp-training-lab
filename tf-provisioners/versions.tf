// Terraform block to configure terraform and provider version
terraform {
  required_version = "~> 1.12.2"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.43.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 6.43.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2.4"
    }
  }
}
