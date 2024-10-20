provider "azurerm" {
  features {}

  subscription_id = "5921bfb3-bfb3-461d-a38a-c5ad6b976cf7"
  resource_provider_registrations = "none"

}

resource "azurerm_resource_group" "aks_rg" {
  name     = "aksResourceGroup"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aksCluster"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = "akscluster"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

 
  network_profile {
    network_plugin = "azure"
  }
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive = true
}
