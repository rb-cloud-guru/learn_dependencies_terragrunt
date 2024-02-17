#storage name
variable storage_account_name {
    description = " The name of the Storage Account Name"
} 

#storage tier
variable storage_account_tier {
    description = " The tier of the Storage Account"
} 

#storage replication type
variable storage_account_type {
    description = " The replication type of the Storage Account"
} 

#region
variable location {
    description = "Location of the storage account"
}

#rg name
variable rg_name {
    description = "Resource Group Name for the storage account"
}