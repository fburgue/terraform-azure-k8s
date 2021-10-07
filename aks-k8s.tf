resource "azurerm_kubernetes_cluster" "default" {
  name                = "cl-fbu-aks"
  location            = "westeurope"
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "clusterfbu-k8s"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = 35
  }

  service_principal {
    client_id     = var.appId
    client_secret = var.password
  }

  role_based_access_control {
    enabled = true
  }

  tags = {
    environment = "FBUDEMO"
  }
}