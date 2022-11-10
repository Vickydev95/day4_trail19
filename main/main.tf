terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.30.0"
    }
  }
}
provider "azurerm" {
  features {}

module "resource_group" {
    source = "../module/resourcegroup"  
}

module "storage_account" {
    source = "../module/storageaccount"
    depends_on = [
      module.resource_group
    ]
}
module "app_service_plan" {
  source = "../module/appservice"
  depends_on = [
    module.resource_group
  ]
}
module "function_app" {
  source = "../module/functionapp"
  depends_on = [
    module.storage_account
  ]
}
}