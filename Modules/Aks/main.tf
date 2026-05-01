resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = var.aks_name

  default_node_pool {
    name            = "nodepool1"
    node_count      = var.node_count
    vm_size         = var.node_size
    vnet_subnet_id  = var.subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  oidc_issuer_enabled = true

  network_profile {
    network_plugin = "azure"

    service_cidr   = "10.2.0.0/24"
    dns_service_ip = "10.2.0.10"
  }
}
