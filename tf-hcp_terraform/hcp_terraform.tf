# Terraform configuration for HCP Terraform Cloud
terraform {
  cloud {
    organization = "oneanupam"
    workspaces {
      name = "fdn-wrk-bld-01"
    }
  }
}
