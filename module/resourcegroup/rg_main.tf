resource "azurerm_resource_group" "rsgpe" {
  name      = var.rsgp_name
  location  = var.location
  tags      = var.tags
}