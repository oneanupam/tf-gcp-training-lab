// Resource block to deploy vpc network
# resource "google_compute_network" "tst_vpc" {
#   project                                   = var.project_id
#   name                                      = var.vpc_name
#   description                               = var.description
#   routing_mode                              = "GLOBAL" # use variable, if parameter will change between deployments.
#   auto_create_subnetworks                   = var.auto_create_subnetworks
#   delete_default_routes_on_create           = var.delete_default_routes
#   network_firewall_policy_enforcement_order = var.network_firewall_policy_enforcement_order
# }

// New resource block for existing vpc network
resource "google_compute_network" "tst_vpc_new" {
  project                                   = var.project_id
  name                                      = var.vpc_name
  description                               = var.description
  routing_mode                              = "GLOBAL" # use variable, if parameter will change between deployments.
  auto_create_subnetworks                   = var.auto_create_subnetworks
  delete_default_routes_on_create           = var.delete_default_routes
  network_firewall_policy_enforcement_order = var.network_firewall_policy_enforcement_order
}
