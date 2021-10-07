# Creating a base resource group
resource "azurerm_resource_group" "rg" {
name     = "Terraform-FBU-Plan-01"
location = "westeurope"
}

