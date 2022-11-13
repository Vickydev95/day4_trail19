resource "azurerm_function_app" "example" {
  name                       = var.fc_name
  location                   = var.location
  resource_group_name        = var.rsgp_name
  app_service_plan_id        = var.app_service_plan_id
  storage_account_name       = var.strg_name
  storage_account_access_key = var.storage_account_access_key
}