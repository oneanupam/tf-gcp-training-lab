# Terraform Checks
This sub-project contains terraform code to understand the concept of `Check Block` and its optional arguments with the help of resource deployment on Google Public Cloud.

- The check block can validate your infrastructure outside the usual resource lifecycle. Check blocks address a gap between post-apply and functional validation of infrastructure.
- Check blocks allow you to define custom conditions that execute on every Terraform plan or apply operation without affecting the overall status of an operation.
- Check blocks execute as the last step of a plan or apply after Terraform has planned or provisioned your infrastructure.


## Prerequisites
All the prerequisites mentioned in top level README file must be fulfilled for successful execution of code.

## TF Code Execution
To execute the terraform code, go to command prompt and then run the following commands:

-   [Required] `terraform init` # To initialize the terraform working directory.
-   [Optional] `terraform validate` # To validate the terraform configuration.
-   [Optional] `terraform fmt` # To format the terraform configuration to a canonical format and style.
-   [Optional] `terraform plan` # To create an execution plan for terraform configuration files.
-   [Required] `terraform apply -auto-approve` # To execute the actions proposed in a terraform plan to create, update, or destroy infrastructure.
-   [Optional] `terraform destroy -auto-approve` # To destroy the created infrastructure. Specific resources can be destroyed using resource targetting.

## References
- https://developer.hashicorp.com/terraform/language/values/outputs
