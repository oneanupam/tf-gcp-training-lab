/*
Steps to create setup for terraform import implementation:
1. Create a VPC using below resource block.
2. Create a subnet manually inside it and then import the subnet.
*/

// Resource block to deploy VPC Network
resource "google_compute_network" "tst_vpc" {
  project                         = var.project_id
  name                            = var.vpc_name
  routing_mode                    = "GLOBAL"
  auto_create_subnetworks         = var.auto_create_subnetworks
  delete_default_routes_on_create = var.delete_default_routes
}
