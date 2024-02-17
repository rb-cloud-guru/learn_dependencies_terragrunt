

#backend 
terraform {
  backend "azurerm" {}
}

#provider
provider "azurerm" {
	features {}
}

#rg Creation
resource "azurerm_resource_group" "rg" {
  name     = var.rg_name 
  location = var.location

  #tags
  tags = {
    environment = "dev"
  }
}

