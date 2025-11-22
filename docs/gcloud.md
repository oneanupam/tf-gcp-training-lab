# GCloud CLI
This document contains the basic gcloud cli commands to work efficiently with google cloud using gcloud CLI.

## CLI Config Management
To manage the multiple configurations for google cloud CLI, use the below command -

```shell
# 1. Personalization
gcloud config list # to show the config details of active configuration
gcloud config set project # to set the project for active configuration

gcloud config configurations # to have multiple configurations

# Available commands for gcloud config configurations:
  activate   - Activates an existing named configuration.
  create     - Creates a new named configuration.
  delete     - Deletes a named configuration.
  describe   - Describes a named configuration by listing its properties.
  list       - Lists existing named configurations.
  rename     - Renames a named configuration.

# 2. Authorization and Credentials

# 2.1 Authenticate using user credentials. Authorize Google Cloud access for the gcloud CLI with Google Cloud user credentials and set the current account as active.
gcloud auth login

# 2.2 Authenticate by using service account impersonation. To impersonate a service account, ensure to have the Service Account Token Creator (roles/iam.serviceAccountTokenCreator) IAM role on the service account. First, Authorize the gcloud CLI with your user identity by running gcloud auth login. Then use impersonation.
gcloud auth login
gcloud config set auth/impersonate_service_account SERVICE_ACCT_EMAIL
gcloud config unset auth/impersonate_service_account

# 2.3 Authenticate using service account credentials. Authorize Google Cloud access similar to gcloud auth login but with service account credentials.
gcloud auth activate-service-account --key-file=KEY_FILE

# 2.4 Manage your Application Default Credentials (ADC) for Cloud Client Libraries.
gcloud auth application-default

gcloud auth list # List all credentialed accounts.
gcloud config set account ACCOUNT # To switch the active account. where [ACCOUNT] is the full email address of the account.
gcloud auth print-access-token # Display the current account's access token.
gcloud auth revoke # Remove access credentials for an account.
```

## References
- https://docs.cloud.google.com/sdk/docs/cheatsheet
- https://cloud.google.com/sdk/gcloud/reference
- https://docs.cloud.google.com/sdk/docs/authorizing
- https://docs.cloud.google.com/docs/authentication/use-service-account-impersonation
