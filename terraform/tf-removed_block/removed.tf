# Removed block to remove the resource without destroying it
# To remove a resource from Terraform, simply delete the resource block / module call from your Terraform configuration and add the removed block like below.
removed {
  from = google_compute_network.tst_vpc_01

  lifecycle {
    destroy = false
  }
}

removed {
  from = google_compute_network.tst_vpc_02

  lifecycle {
    destroy = false
  }
}
