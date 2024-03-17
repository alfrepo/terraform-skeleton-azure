# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=> 3.96.0"
    }
  }

  # use a remote state store

  # backend "azurerm" {
  #     resource_group_name  = "alfdevtfstateblob"
  #     storage_account_name = "alfdevtfstateblob"
  #     container_name       = "alfdevtfstateblob"
  #     key                  = "project_az_function_terraform.tfstate"
  # }

}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}