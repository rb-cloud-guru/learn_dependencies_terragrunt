#backend
remote_state {
    backend = "azurerm"
    config = {
        resource_group_name = "replication"
        storage_account_name = "tfstorage2024"
        container_name = "terragrunt"
        key = "${path_relative_to_include()}/terraform.tfstate"
    }
}

#common var or even locals 
inputs = {
    location = "eastus"
    rg_name = "azurefunction"
    storage_account_name = "hammouda1948"
    storage_account_tier = "Standard"
    storage_account_type = "LRS"
         
 }

