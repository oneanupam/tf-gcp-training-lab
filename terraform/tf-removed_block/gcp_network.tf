// Resource block to deploy vpc network
resource "google_compute_network" "tst_vpc_01" {
  project                                   = var.project_id
  name                                      = "${var.vpc_name}-01"
  description                               = var.description
  routing_mode                              = "GLOBAL" # use variable, if parameter will change between deployments.
  auto_create_subnetworks                   = var.auto_create_subnetworks
  delete_default_routes_on_create           = var.delete_default_routes
  network_firewall_policy_enforcement_order = var.network_firewall_policy_enforcement_order
}

// Resource block to deploy vpc network
resource "google_compute_network" "tst_vpc_02" {
  project                                   = var.project_id
  name                                      = "${var.vpc_name}-02"
  description                               = var.description
  routing_mode                              = "GLOBAL" # use variable, if parameter will change between deployments.
  auto_create_subnetworks                   = var.auto_create_subnetworks
  delete_default_routes_on_create           = var.delete_default_routes
  network_firewall_policy_enforcement_order = var.network_firewall_policy_enforcement_order
}
