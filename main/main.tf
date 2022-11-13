data "azurerm_client_config" "current" {}
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.31.0"
    }
  }
}


provider "azurerm" {
  features{
    resource_group {
       prevent_deletion_if_contains_resources = false      
       }
  }
}
module "resource_group" {    
  source    = "../module/resourcegroup"
  rsgp_name   = var.rsgp_name
  location  = var.location  
  tags      = var.tags
}



module "storage_account" {    
  source    = "../module/storageaccount"
  depends_on = [ module.resource_group ]
  rsgp_name   = var.rsgp_name
  strg_name   = var.strg_name
  location  = var.location  
  tags      = var.tags
}

module "app_service_plan" {    
  depends_on = [ module.resource_group ]
  source    = "../module/appserviceplan"
  asp_name  = var.asp_name
  location  = var.location  
  rsgp_name   = var.rsgp_name
}

module "function_app" {  
  depends_on                    = [ module.storage_account ]
  source                        = "../module/functionapp"
  fc_name                      = var.fc_name
  rsgp_name                       = var.rsgp_name
  strg_name                       = var.strg_name
  location                      = var.location
  app_service_plan_id           = module.app_service_plan.app_service_id
  storage_account_access_key    = module.storage_account.primary_access_key
}
module "key_vault" {    
  source    = "../module/keyvault"
  depends_on = [ module.resource_group ]
  kv_name   = var.kv_name
  rsgp_name   = var.rsgp_name
  location  = var.location  
  tenant_id = data.azurerm_client_config.current.tenant_id
  object_id = data.azurerm_client_config.current.object_id
}
module "cosmosdb_account" {    
  source    = "../module/cosmosdb"
  depends_on = [ module.key_vault ]
  rsgp_name   = var.rsgp_name
  location  = var.location  
}









