variable "storage_accounts" {
  type = map(object({
    name                     = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "resource_group_name" {
  description = "The name of the storage account resource group"
}

variable "location" {
  description = "The Azure region where the storage account will be created"
}