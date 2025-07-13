# This file is used to specify the required versions of Terraform and providers.
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
  }
}
