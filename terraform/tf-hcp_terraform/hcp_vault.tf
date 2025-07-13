provider "vault" {
  address   = var.vault_addr
  namespace = var.vault_namespace # required for HCP Vault, skip if using OSS Vault
  # token     = var.vault_token # Stored in VAULT_TOKEN environment variable, hence not required here.
  # If you are using HCP Vault, you can use the HCP Vault CLI to authenticate and set the VAULT_TOKEN environment variable.
}

# Data block to read a secret from KV v2
data "vault_kv_secret_v2" "vpc_description" {
  mount = "secret"
  name  = "gcp/vpcdesc"
}

output "vpc_description" {
  value     = data.vault_kv_secret_v2.vpc_description.data["vpc-desc"]
  sensitive = true
}
