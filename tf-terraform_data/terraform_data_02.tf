// Terraform data resource example with triggers_replace
resource "terraform_data" "tst_execution" {

  # Changes to triggers replace value (map/list) requires re-provisioning
  triggers_replace = [
    timestamp()
  ]

  # triggers_replace = {
  #   timestamp = "${timestamp()}"
  # }

  # local-exec for linux os
  provisioner "local-exec" {
    when        = create
    command     = <<EOT
    echo "Creating project details file..."
    echo "account: $(gcloud config get-value account)" >> project-details.txt
    echo "project: $(gcloud config get-value project)" >> project-details.txt
    EOT
    working_dir = "${path.module}/reports/"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "rm -f ${path.module}/reports/project-details.txt"
  }
}
