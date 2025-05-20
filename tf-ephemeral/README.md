# Terraform Variables
This sub-project contains terraform code to understand the concept of `ephemerality in resources` with the help of resource deployment on Google Cloud Platform.

- Ephemeral resources are Terraform resources that are essentially temporary. Ephemeral resources have a unique lifecycle, and Terraform does not store information about ephemeral resources in state or plan files. Each ephemeral block describes one or more ephemeral resources, such as a temporary password or connection to another system.
- Terraform's managed resources, defined by resource blocks, can include ephemeral arguments, called write-only arguments. Write-only arguments are only available during the current Terraform operation, and Terraform does not store them in state or plan files.

> [!NOTE]
> It is important to note that, write-only arguments accept both ephemeral and non-ephemeral values.

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
- https://developer.hashicorp.com/terraform/language/resources/ephemeral
- https://developer.hashicorp.com/terraform/language/resources/ephemeral/write-only#update-write-only-arguments-with-versions
