output "storage_account_id" {
  description = "ID of the storage account"
  value       = azurerm_storage_account.storage_account[*].id
}


output "storage_account_name" {
  description = "Name of the storage account"
  value       = azurerm_storage_account.storage_account[*].name
}


output "storage_account_connection_string" {
  description = "Connection string for the storage account"
  value       = "DefaultEndpointsProtocol=https;AccountName=${azurerm_storage_account.storage_account[*].name};AccountKey=${azurerm_storage_account.storage_account[*].primary_access_key};EndpointSuffix=core.windows.net"
}
