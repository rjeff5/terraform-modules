# resource "azurerm_storage_account" "storage_account" {
#   count = length(var.storage_accounts)

#   name                     = var.storage_accounts[count.index].storage_account_name
#   resource_group_name      = var.storage_accounts[count.index].resource_group_name
#   location                 = var.storage_accounts[count.index].location
#   account_tier             = var.storage_accounts[count.index].account_tier
#   account_replication_type = var.storage_accounts[count.index].account_replication_type

#   # Other storage account settings
# }


# resource "azurerm_storage_container" "containers" {
#   count                = length(var.storage_accounts)
#   name                 = var.containers
#   storage_account_name = var.storage_accounts[count.index].storage_account_name
#   container_access_type = "private"
# }


resource "azurerm_storage_account" "storage_accounts" {
  count = length(var.storage_accounts)

  name                     = var.storage_accounts[count.index].storage_account_name
  resource_group_name      = var.storage_accounts[count.index].resource_group_name
  location                 = var.storage_accounts[count.index].location
  account_tier             = var.storage_accounts[count.index].account_tier
  account_replication_type = var.storage_accounts[count.index].account_replication_type

  # Other storage account settings
// Create storage containers dynamically for each storage account
dynamic "azurerm_storage_container" {
  for_each = {
    for idx, account in var.storage_accounts : idx => account.containers
  }

  content {
    name                  = azurerm_storage_account.storage_accounts[each.key].name
    storage_account_name  = each.value.container_name
    container_access_type = each.value.container_access_type
  }
}
}