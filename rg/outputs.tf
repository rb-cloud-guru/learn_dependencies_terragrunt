#resource group name
output "rg_name" {
  value = azurerm_resource_group.rg.name
}

#resource group region
output "location" {
  value = azurerm_resource_group.rg.location
}