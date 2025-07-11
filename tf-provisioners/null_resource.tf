// null resource to execute local_exec provisioner
resource "null_resource" "tst_execution" {

  # Changes to triggers value requires re-provisioning
  triggers = {
    always_run = "${timestamp()}"
  }

  # local-exec for linux os
  provisioner "local-exec" {
    when        = create
    command     = "gcloud config get-value project > project-details.txt"
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
