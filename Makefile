# Make will use zsh instead of bash
# SHELL := /bin/zsh
SHELL := /usr/bin/env zsh

TF_PROJECT ?= tf-for_each
TF_WORKDIR ?= "$(CURDIR)/terraform/$(TF_PROJECT)"
REGISTRY_URL := gcr.io/cloud-foundation-cicd

.PHONY: init init_upgrade fmt validate

# When you run make all (or just make, since all is usually the default target), Make will execute the targets listed after the colon, in order.
all: init init_upgrade fmt validate plan apply
tf_basic: init fmt plan apply
tf_all: init fmt plan apply destroy clean

.PHONY: printvars
printvars:
	@echo "TF_PROJECT: $(TF_PROJECT)"
	@echo "TF_WORKDIR: $(TF_WORKDIR)"

# Initialize the Terraform project
init:
	@cd $(TF_WORKDIR)
	@echo "Running terraform init in $(TF_WORKDIR)..."
	@terraform init

# Upgrade the Terraform project
# This will update the provider versions and modules to the latest versions
init_upgrade:
	@cd $(TF_WORKDIR)
	@echo "Upgrading Terraform project in $(TF_WORKDIR)..."
	@terraform init -upgrade

# Run terraform fmt to format the code
fmt:
	@cd $(TF_WORKDIR)
	@echo "Formatting Terraform code in $(TF_WORKDIR)..."
	@terraform fmt -recursive

# Run terraform fmt to check formatting
validate:
	@cd $(TF_WORKDIR)
	@echo "Running terraform validate in $(TF_WORKDIR)..."
	@terraform validate

# Run to check the plan without applying changes
.PHONY: plan
plan:
	@cd $(TF_WORKDIR)
	@echo "Planning Terraform configuration in $(TF_WORKDIR)..."
	@terraform plan

# Run terraform apply to apply the Terraform configuration
.PHONY: apply
apply:
	# Ensure the working directory exists
	@if [ ! -d "$(TF_WORKDIR)" ]; then
		@echo "Error: Working directory $(TF_WORKDIR) does not exist."
		@exit 1
	@fi
	@cd $(TF_WORKDIR)
	@echo "Running terraform apply in $(TF_WORKDIR)..."
	@terraform apply -auto-approve

# Run terraform destroy to destroy the Terraform resources
.PHONY: destroy
destroy:
	@echo "Running terraform destroy in $(TF_WORKDIR)..."
	@terraform destroy -auto-approve

# Clean up Terraform state files and directories
.PHONY: clean
clean:
	@echo "Cleaning up Terraform state files in $(TF_WORKDIR)..."
	@rm -rf .terraform
	@rm -f terraform.tfstate
	@rm -f terraform.tfstate.backup
	@rm -f .terraform.lock.hcl
	@echo "Cleanup complete."
