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
# Grant and revoke authorization to the gcloud CLI and manage credentials.

gcloud auth login # Authorize Google Cloud access for the gcloud CLI with Google Cloud user credentials and set the current account as active.
gcloud auth activate-service-account # Authorize Google Cloud access similar to gcloud auth login but with service account credentials.
gcloud auth application-default # Manage your Application Default Credentials (ADC) for Cloud Client Libraries.

gcloud auth list # List all credentialed accounts.
gcloud auth print-access-token # Display the current account's access token.
gcloud auth revoke # Remove access credentials for an account.
```

## References
- https://docs.cloud.google.com/sdk/docs/cheatsheet
- https://cloud.google.com/sdk/gcloud/reference
