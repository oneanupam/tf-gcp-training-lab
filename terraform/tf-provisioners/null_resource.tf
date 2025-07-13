// null resource to execute local_exec provisioner
resource "null_resource" "tst_execution" {

  # Changes to triggers value requires re-provisioning
  triggers = {
    always_run = "${timestamp()}"
  }

  # local-exec for linux os
  provisioner "local-exec" {
    when    = create
    command = <<-EOT
    echo "Creating project details file..."
    gcloud config set project $PROJECT
    echo "account: $(gcloud config get-value account)" >> project-details.txt
    echo "project: $(gcloud config get-value project)" >> project-details.txt
    EOT
    environment = {
      "PROJECT" = "weighty-sunbeam-460307-q6"
    }
    working_dir = "${path.module}/reports/"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "rm -f ${path.module}/reports/project-details.txt"
  }

  /*
  # local-exec for windows os
  provisioner "local-exec" {
    when        = create
    command     = "gcloud config get-value project > project-details.txt"
    working_dir = "${path.module}/reports/"
  }
  */
}
