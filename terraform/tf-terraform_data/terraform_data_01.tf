// Terraform data resource example with input and lifecycle replace_triggered_by
resource "terraform_data" "app_version" {
  input = var.app_version
}

resource "terraform_data" "tst_resource" {
  lifecycle {
    replace_triggered_by = [terraform_data.app_version.input]
  }
}
