variable "storage_accounts" {
  description = "List of storage account configurations"
  type        = list(object({
    storage_account_name      = string
    resource_group_name       = string
    location                  = string
    account_tier              = string
    account_replication_type  = string
    # Add other necessary properties
  }))
}