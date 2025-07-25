// Resource block to reserve regional External IP Address
resource "google_compute_address" "tst_eip" {
  count = var.reserve_eip ? 1 : 0

  project      = var.project_id
  name         = var.eip_name
  region       = var.default_region
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"

  # local-exec for linux os
  provisioner "local-exec" {
    when        = create
    command     = "echo eip name: ${self.name} > eip-details.txt"
    working_dir = "${path.module}/reports/"
  }

  provisioner "local-exec" {
    when    = create
    command = <<-EOT
    echo "eip address:" ${self.id} >> ${path.module}/reports/eip-details.txt
    EOT
  }

  provisioner "local-exec" {
    when    = destroy
    command = "rm -f ${path.module}/reports/eip-details.txt"
  }

  /*
  # local-exec for windows os
  provisioner "local-exec" {
    command     = "'eip name: ${self.name}, eip address: ${self.id}' > eip-details.txt"
    interpreter = ["PowerShell", "-Command"] # default interpreter is command prompt for windows os.
    working_dir = "${path.module}/reports/"
  }
  */
}
