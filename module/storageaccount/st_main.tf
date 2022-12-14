resource "azurerm_storage_account" "storage" {
  name                     = var.strg_name
  resource_group_name      = var.rsgp_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags                     = var.tags
}