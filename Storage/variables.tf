# variable "storage_accounts" {
#   description = "List of storage account configurations"
#   type        = list(object({
#     storage_account_name      = string
#     resource_group_name       = string
#     location                  = string
#     account_tier              = string
#     account_replication_type  = string
#     # Add other necessary properties
#   }))
# }
variable "storage_accounts" {
  description = "A list of storage account configurations."
  type        = list(object({
    storage_account_name      = string
    resource_group_name       = string
    location                  = string
    account_tier              = string
    account_replication_type  = string
    containers                = list(object({
      container_name         = string
      container_access_type  = string
    }))
    // Add more properties as needed for storage account configurations
  }))
}
