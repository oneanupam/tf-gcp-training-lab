# Terraform Moved Block
This sub-project contains terraform code to understand the concept of `moved block` with the help of resource deployment on Google Cloud Platform.

- By default Terraform understands moving or renaming an object as an intent to destroy the object at the old address and to create a new object at the new address. When you add moved blocks in your configuration to record where you've historically moved or renamed an object, Terraform treats an existing object at the old address as if it now belongs to the new address.
- Before creating a new plan for the resource specified in the to field, Terraform checks the state for an existing object at the address specified in the from field. Terraform renames existing objects to the string specified in the to field and then creates a plan.

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
- https://developer.hashicorp.com/terraform/language/moved
- https://developer.hashicorp.com/terraform/language/modules/develop/refactoring
