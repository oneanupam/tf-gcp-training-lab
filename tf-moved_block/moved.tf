# Moved block to move the resource from one name to another
moved {
  from = google_compute_network.tst_vpc
  to   = google_compute_network.tst_vpc_new
}
