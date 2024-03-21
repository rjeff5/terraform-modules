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



resource "azurerm_storage_account" "storage_account" {
  count = length(var.storage_accounts)

  name                     = var.storage_accounts[count.index].storage_account_name
  resource_group_name      = var.storage_accounts[count.index].resource_group_name
  location                 = var.storage_accounts[count.index].location
  account_tier             = var.storage_accounts[count.index].account_tier
  account_replication_type = var.storage_accounts[count.index].account_replication_type

  # Other storage account settings
}
resource "azurerm_storage_account" "storage_account" {
  count = length(var.storage_accounts)

  name                     = var.storage_accounts[count.index].storage_account_name
  resource_group_name      = var.storage_accounts[count.index].resource_group_name
  location                 = var.storage_accounts[count.index].location
  account_tier             = var.storage_accounts[count.index].account_tier
  account_replication_type = var.storage_accounts[count.index].account_replication_type

  # Other storage account settings
}

resource "azurerm_storage_container" "storage_container" {
  count = length(var.storage_accounts[count.index].containers)  // Corrected this line

  name                  = var.storage_accounts[count.index].containers[count.index].container_name  // Adjusted this line
  storage_account_name  = azurerm_storage_account.storage_account[count.index].name  // Adjusted this line
  container_access_type = var.storage_accounts[count.index].containers[count.index].container_access_type  // Adjusted this line
}
