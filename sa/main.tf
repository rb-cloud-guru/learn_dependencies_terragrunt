
#backend 
terraform {
  backend "azurerm" {}
}

#provider
provider "azurerm" {
	features {}
}

#create a storage account for the azure function
resource "azurerm_storage_account" "linux-storage-account" {
  name                     = var.storage_account_name
  location                 = var.location
  resource_group_name      = var.rg_name
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_type

#tags
  tags = {
    environment = "dev"
  }
}

