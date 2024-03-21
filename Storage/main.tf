resource "azurerm_storage_account" "storage_account" {
  count = length(var.storage_accounts)

  name                     = var.storage_accounts[count.index].storage_account_name
  resource_group_name      = var.storage_accounts[count.index].resource_group_name
  location                 = var.storage_accounts[count.index].location
  account_tier             = var.storage_accounts[count.index].account_tier
  account_replication_type = var.storage_accounts[count.index].account_replication_type

  # Other storage account settings
}