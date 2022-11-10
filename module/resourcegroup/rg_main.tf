resource "azurerm_resource_group" "StorageAccount-ResourceGroup" {
  name     = var.vname
  location = var.location
  tags = var.tags
}