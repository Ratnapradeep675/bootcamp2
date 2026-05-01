resource "azurerm_resource_group" "dev_rg" {
  name     = "rg-dev-bootcamp2"
  location = var.location
}
