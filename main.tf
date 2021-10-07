# FBU Terraform Workshop in Azure for CIRB!
# Defines the Azure provider and defines what subscription we are connecting to.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

provider "azurerm" {
features {}
subscription_id = var.subscription_id
client_id       = var.client_id
client_secret   = var.client_secret
tenant_id       = var.tenant_id
}

# Specifies we want to use Terraform Cloud to store our state file. 
terraform {
backend "remote" {
organization = "CIRB"
workspaces {
name = "terraform-azure-k8s"
}
}
}