terraform {
  backend "azurerm" {
    resource_group_name  = "StorageAccount-ResourceGroup"
    storage_account_name = "day4trail19"
    container_name       = "practice"
    key                  = "prod.terraform.tfstate"
  }
}