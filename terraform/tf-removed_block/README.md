# Terraform Removed Block
This sub-project contains terraform code to understand the concept of `removed block` with the help of resource deployment on Google Cloud Platform.

- The terraform state rm command removes the binding to an existing remote object without first destroying it. The remote object continues to exist but is no longer managed by Terraform.
- Instead of using the terraform state rm command, you can use removed blocks to remove resources. You can remove more than one resource at a time, and you can review removals as part of your normal plan and apply workflow.
- To remove a resource from Terraform, simply delete the resource block / module call from your Terraform configuration and then add the removed block for that resource and then run plan and apply operations.

## Prerequisites
All the prerequisites mentioned in top level README file must be fulfilled for successful execution of code.

## Considerations
To run the code from your local machine, please make below changes:
- rename the provider.tf.disabled to provider.tf and backend.tf to backed.tf.disabled, if you want to use local backend.
- Make sure to give "roles/iam.serviceAccountTokenCreator" role to an identity (who will trigger the terraform code) on the service account for the impersonation to succeed.

## TF Code Execution
To execute the terraform code, go to command prompt and then run the following commands:

-   [Required] `terraform init`
-   [Optional] `terraform validate`
-   [Optional] `terraform fmt`
-   [Optional] `terraform plan`
-   [Required] `terraform apply -auto-approve`
-   [Optional] `terraform destroy -auto-approve`

## References
- https://developer.hashicorp.com/terraform/cli/commands/state/rm
- https://developer.hashicorp.com/terraform/language/modules/syntax#removing-modules
