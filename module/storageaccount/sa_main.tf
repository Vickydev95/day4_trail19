
resource "azurerm_storage_account" "StorageAccount-ResourceGroup" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.StorageAccount-ResourceGroup.name
  location                 = azurerm_resource_group.StorageAccount-ResourceGroup.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}