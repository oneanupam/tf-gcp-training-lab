/*
Steps:
1. Create a new infrastructure resource.
2. Move opeartion using `terraform state mv` -
    - First move the resource from the old name to the new name.
    - Remove / comment the old resource block and add the resource block with the new name, before the running plan and apply operation.
3. Move operation using `moved` block -
    - If using `moved` block, ensure to add the moved block with the required details as below.
    - Remove / comment the old resource block and add the resource block with the new name, before the running plan and apply operation.
*/

# Moved block to move the resource from one name to another
moved {
  from = google_compute_network.tst_vpc
  to   = google_compute_network.tst_vpc_new
}
