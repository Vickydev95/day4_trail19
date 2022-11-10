resource "azurerm_app_service_plan" "StorageAccount-ResourceGroup" {
  name                = var.StorageAccount-ResourceGroup_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    tier = "Standard"
    size = "S1"
  }
}