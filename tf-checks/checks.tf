# Check block to validate the deployed infrastructure
check "tst_vpc_exists" {
  assert {
    condition     = google_compute_network.tst_vpc.self_link != ""
    error_message = "VPC was not created or self_link is missing"
  }
}
