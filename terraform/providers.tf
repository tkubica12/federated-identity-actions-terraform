terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3"
    }
  }

  backend "azurerm" {
    resource_group_name  = "base"
    storage_account_name = "tkubicastore"
    container_name       = "tfstate"
    key                  = "federated-identity-actions-terraform.terraform.tfstate"
   # use_oidc             = true
   # subscription_id      = "00000000-0000-0000-0000-000000000000"
   # tenant_id            = "00000000-0000-0000-0000-000000000000"
  }
}

provider "azurerm" {
  features {}
}

