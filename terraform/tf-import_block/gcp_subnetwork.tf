# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "projects/weighty-sunbeam-460307-q6/regions/us-central1/subnetworks/subnet-01"
resource "google_compute_subnetwork" "tst_subnet" {
  description                      = null
  external_ipv6_prefix             = null
  ip_cidr_range                    = "10.0.10.0/24"
  ip_collection                    = null
  ipv6_access_type                 = null
  name                             = "subnet-01"
  network                          = "https://www.googleapis.com/compute/v1/projects/weighty-sunbeam-460307-q6/global/networks/fdn-tst-vpc-01"
  private_ip_google_access         = false
  private_ipv6_google_access       = "DISABLE_GOOGLE_ACCESS"
  project                          = "weighty-sunbeam-460307-q6"
  purpose                          = "PRIVATE"
  region                           = "us-central1"
  reserved_internal_range          = null
  role                             = null
  send_secondary_ip_range_if_empty = null
  stack_type                       = "IPV4_ONLY"
}
